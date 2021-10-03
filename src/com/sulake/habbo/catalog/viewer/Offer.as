package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_873:String = "price_type_none";
      
      public static const const_355:String = "pricing_model_multi";
      
      public static const const_434:String = "price_type_credits";
      
      public static const const_377:String = "price_type_credits_and_pixels";
      
      public static const const_378:String = "pricing_model_bundle";
      
      public static const const_390:String = "pricing_model_single";
      
      public static const const_527:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1223:String = "pricing_model_unknown";
      
      public static const const_354:String = "price_type_pixels";
       
      
      private var var_833:int;
      
      private var _offerId:int;
      
      private var var_834:int;
      
      private var var_395:String;
      
      private var var_562:String;
      
      private var var_2019:int;
      
      private var var_600:ICatalogPage;
      
      private var var_1250:String;
      
      private var var_394:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1250 = param1.localizationId;
         var_833 = param1.priceInCredits;
         var_834 = param1.priceInPixels;
         var_600 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_395;
      }
      
      public function get page() : ICatalogPage
      {
         return var_600;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2019 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_394;
      }
      
      public function get localizationId() : String
      {
         return var_1250;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_834;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1250 = "";
         var_833 = 0;
         var_834 = 0;
         var_600 = null;
         if(var_394 != null)
         {
            var_394.dispose();
            var_394 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_562;
      }
      
      public function get previewCallbackId() : int
      {
         return var_2019;
      }
      
      public function get priceInCredits() : int
      {
         return var_833;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_395 = const_390;
            }
            else
            {
               var_395 = const_355;
            }
         }
         else if(param1.length > 1)
         {
            var_395 = const_378;
         }
         else
         {
            var_395 = const_1223;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_395)
         {
            case const_390:
               var_394 = new SingleProductContainer(this,param1);
               break;
            case const_355:
               var_394 = new MultiProductContainer(this,param1);
               break;
            case const_378:
               var_394 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_395);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_833 > 0 && var_834 > 0)
         {
            var_562 = const_377;
         }
         else if(var_833 > 0)
         {
            var_562 = const_434;
         }
         else if(var_834 > 0)
         {
            var_562 = const_354;
         }
         else
         {
            var_562 = const_873;
         }
      }
   }
}
