package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1686:XML;
      
      private var var_1376:ITextWindow;
      
      private var var_1375:ITextWindow;
      
      private var var_1684:XML;
      
      private var var_746:IWindowContainer;
      
      private var var_2269:ITextWindow;
      
      private var var_1685:String = "";
      
      private var var_2337:IButtonWindow;
      
      private var var_1682:XML;
      
      private var var_1374:ITextWindow;
      
      private var var_1683:XML;
      
      private var var_745:IButtonWindow;
      
      private var var_68:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_434:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1684) as IWindowContainer;
               break;
            case Offer.const_354:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1683) as IWindowContainer;
               break;
            case Offer.const_377:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1686) as IWindowContainer;
               break;
            case Offer.const_527:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1682) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_746 != null)
            {
               _window.removeChild(var_746);
               var_746.dispose();
            }
            var_746 = _loc2_;
            _window.addChild(_loc2_);
            var_746.x = 0;
            var_746.y = 0;
         }
         var_1374 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1375 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1376 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2269 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_745 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_745 != null)
         {
            var_745.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_745.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_68 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_68,page,var_1685);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1684 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1683 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1686 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1682 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_996,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1685 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_68 = param1.offer;
         attachStub(var_68.priceType);
         if(var_1374 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_68.priceInCredits));
            var_1374.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1375 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_68.priceInPixels));
            var_1375.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1376 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_68.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_68.priceInPixels));
            var_1376.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_745 != null)
         {
            var_745.enable();
         }
      }
   }
}
