package com.sulake.habbo.catalog.marketplace
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketPlaceOffer;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketPlaceOffersEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketPlaceOwnOffersEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketplaceBuyOfferResultEvent;
   import com.sulake.habbo.communication.messages.incoming.marketplace.MarketplaceCancelOfferResultEvent;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceConfigurationMessageComposer;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketPlaceOffersParser;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketPlaceOwnOffersParser;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketplaceBuyOfferResultParser;
   import com.sulake.habbo.communication.messages.parser.marketplace.MarketplaceCancelOfferResultParser;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class MarketPlaceLogic implements IMarketPlace
   {
       
      
      public const const_1629:int = 3;
      
      public const const_1574:int = 2;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_2012:int = 0;
      
      private var _visualization:IMarketPlaceVisualization;
      
      private var var_1627:int;
      
      private var _windowManager:IHabboWindowManager;
      
      public const const_1458:int = 1;
      
      private var var_670:Map;
      
      private var var_2011:String = "";
      
      private var var_1632:int = -1;
      
      private var var_2009:MarketplaceItemStats;
      
      private var var_2010:int = -1;
      
      private var var_74:IHabboCatalog;
      
      private var var_330:Map;
      
      private var var_1628:int;
      
      private var var_1678:int;
      
      private var var_2008:int = 0;
      
      private var var_193:MarketplaceConfirmationDialog;
      
      public function MarketPlaceLogic(param1:IHabboCatalog, param2:IHabboWindowManager, param3:IRoomEngine)
      {
         super();
         var_74 = param1;
         _windowManager = param2;
         _roomEngine = param3;
         getConfiguration();
      }
      
      public function buyOffer(param1:int) : void
      {
         if(!var_330 || !var_74 || !var_74.getPurse())
         {
            return;
         }
         var _loc2_:MarketPlaceOfferData = var_330.getValue(param1) as MarketPlaceOfferData;
         if(var_74.getPurse().credits < _loc2_.price)
         {
            var_74.showNotEnoughCreditsAlert("${catalog.alert.notenough.credits.description}");
            return;
         }
         showConfirmation(const_1458,_loc2_);
      }
      
      public function requestOffers(param1:int, param2:int, param3:String, param4:int) : void
      {
         var_2008 = param1;
         var_2012 = param2;
         var_2011 = param3;
         var_2010 = param4;
         if(var_74)
         {
            var_74.getPublicMarketPlaceOffers(param1,param2,param3,param4);
         }
      }
      
      public function requestOwnItems() : void
      {
         var_74.getOwnMarketPlaceOffers();
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1632;
      }
      
      public function latestOwnOffers() : Map
      {
         return var_670;
      }
      
      public function get localization() : ICoreLocalizationManager
      {
         return var_74.localization;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      public function dispose() : void
      {
         var_74 = null;
         _windowManager = null;
      }
      
      public function set averagePricePeriod(param1:int) : void
      {
         var_1632 = param1;
      }
      
      public function set itemStats(param1:MarketplaceItemStats) : void
      {
         if(param1.furniCategoryId != var_1628 || param1.furniTypeId != var_1627)
         {
            return;
         }
         var_2009 = param1;
         if(_visualization)
         {
            _visualization.listUpdatedNotify();
         }
      }
      
      public function requestOffersByName(param1:String) : void
      {
         var_74.getPublicMarketPlaceOffers(-1,-1,param1,-1);
      }
      
      public function onCancelResult(param1:IMessageEvent) : void
      {
         var event:IMessageEvent = param1;
         var cancelEvent:MarketplaceCancelOfferResultEvent = event as MarketplaceCancelOfferResultEvent;
         var parser:MarketplaceCancelOfferResultParser = cancelEvent.getParser() as MarketplaceCancelOfferResultParser;
         if(parser.result == 1)
         {
            var_670.remove(parser.offerId);
            _visualization.listUpdatedNotify();
         }
         else if(parser.result == 0)
         {
            if(_windowManager != null)
            {
               _windowManager.alert("${catalog.marketplace.operation_failed.topic}","{{catalog.marketplace.cancel_failed}",0,function(param1:IAlertDialog, param2:Event):void
               {
                  param1.dispose();
               });
            }
         }
      }
      
      private function getConfiguration() : void
      {
         if(!var_74 || true)
         {
            return;
         }
         var_74.connection.send(new GetMarketplaceConfigurationMessageComposer());
      }
      
      public function registerVisualization(param1:IMarketPlaceVisualization = null) : void
      {
         if(param1 == null)
         {
            return;
         }
         _visualization = param1;
      }
      
      public function onBuyResult(param1:IMessageEvent) : void
      {
         var updateItem:MarketPlaceOfferData = null;
         var event:IMessageEvent = param1;
         var buyEvent:MarketplaceBuyOfferResultEvent = event as MarketplaceBuyOfferResultEvent;
         var parser:MarketplaceBuyOfferResultParser = buyEvent.getParser() as MarketplaceBuyOfferResultParser;
         if(parser.result == 1)
         {
            refreshOffers();
         }
         else if(parser.result == 2)
         {
            var_330.remove(parser.requestedOfferId);
            _visualization.listUpdatedNotify();
            if(_windowManager != null)
            {
               _windowManager.alert("${catalog.marketplace.not_available_title}","${catalog.marketplace.not_available_header}",0,function(param1:IAlertDialog, param2:Event):void
               {
                  param1.dispose();
               });
            }
         }
         else if(parser.result == 3)
         {
            updateItem = var_330.getValue(parser.requestedOfferId) as MarketPlaceOfferData;
            if(updateItem)
            {
               updateItem.offerId = parser.offerId;
               updateItem.price = parser.newPrice;
               --updateItem.offerCount;
               var_330.add(parser.offerId,updateItem);
            }
            var_330.remove(parser.requestedOfferId);
            showConfirmation(const_1574,updateItem);
            _visualization.listUpdatedNotify();
         }
         else if(parser.result == 4)
         {
            if(_windowManager != null)
            {
               _windowManager.alert("${catalog.alert.notenough.title}","${catalog.alert.notenough.credits.description}",0,function(param1:IAlertDialog, param2:Event):void
               {
                  param1.dispose();
               });
            }
         }
      }
      
      public function redeemSoldOffers() : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc1_:Array = var_670.getKeys();
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = var_670.getValue(_loc2_);
            if(_loc3_.status == MarketPlaceOfferState.const_379)
            {
               var_670.remove(_loc2_);
            }
         }
         var_74.redeemSoldMarketPlaceOffers();
         _visualization.listUpdatedNotify();
      }
      
      public function onOwnOffers(param1:IMessageEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:MarketPlaceOwnOffersEvent = param1 as MarketPlaceOwnOffersEvent;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:MarketPlaceOwnOffersParser = _loc2_.getParser() as MarketPlaceOwnOffersParser;
         if(_loc3_ == null)
         {
            return;
         }
         var_1678 = _loc3_.creditsWaiting;
         var_670 = new Map();
         for each(_loc4_ in _loc3_.offers)
         {
            _loc5_ = new MarketPlaceOfferData(_loc4_.offerId,_loc4_.furniId,_loc4_.furniType,_loc4_.price,_loc4_.status,_loc4_.averagePrice);
            _loc5_.timeLeftMinutes = _loc4_.timeLeftMinutes;
            var_670.add(_loc4_.offerId,_loc5_);
         }
         if(_visualization == null)
         {
            return;
         }
         _visualization.listUpdatedNotify();
      }
      
      public function requestOffersByPrice(param1:int) : void
      {
         var_74.getPublicMarketPlaceOffers(param1,-1,"",-1);
      }
      
      private function showConfirmation(param1:int, param2:MarketPlaceOfferData) : void
      {
         if(!var_193)
         {
            var_193 = new MarketplaceConfirmationDialog(this,var_74,_roomEngine);
         }
         var_193.showConfirmation(param1,param2);
      }
      
      public function onOffers(param1:IMessageEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc2_:MarketPlaceOffersEvent = param1 as MarketPlaceOffersEvent;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:MarketPlaceOffersParser = _loc2_.getParser() as MarketPlaceOffersParser;
         if(_loc3_ == null)
         {
            return;
         }
         if(var_330)
         {
            for each(_loc5_ in var_330)
            {
               _loc5_.dispose();
            }
         }
         var_330 = new Map();
         for each(_loc4_ in _loc3_.offers)
         {
            _loc6_ = new MarketPlaceOfferData(_loc4_.offerId,_loc4_.furniId,_loc4_.furniType,_loc4_.price,_loc4_.status,_loc4_.averagePrice,_loc4_.offerCount);
            _loc6_.timeLeftMinutes = _loc4_.timeLeftMinutes;
            var_330.add(_loc4_.offerId,_loc6_);
         }
         if(_visualization == null)
         {
            return;
         }
         _visualization.listUpdatedNotify();
      }
      
      public function get itemStats() : MarketplaceItemStats
      {
         return var_2009;
      }
      
      public function refreshOffers() : void
      {
         requestOffers(var_2008,var_2012,var_2011,var_2010);
      }
      
      public function get creditsWaiting() : int
      {
         return var_1678;
      }
      
      public function redeemExpiredOffer(param1:int) : void
      {
         var_74.redeemExpiredMarketPlaceOffer(param1);
      }
      
      public function requestItemStats(param1:int, param2:int) : void
      {
         if(var_74)
         {
            var_1627 = param2;
            var_1628 = param1;
            var_74.getMarketplaceItemStats(param1,param2);
         }
      }
      
      public function latestOffers() : Map
      {
         return var_330;
      }
   }
}
