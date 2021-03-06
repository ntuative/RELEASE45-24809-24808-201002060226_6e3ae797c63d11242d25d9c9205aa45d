package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1568:int = 2;
      
      public static const const_1481:int = 1;
      
      public static const const_1482:int = 0;
       
      
      private var var_1134:int;
      
      private var var_349:int;
      
      private var var_2329:int;
      
      private var _offerId:int;
      
      private var var_1565:int;
      
      private var var_1564:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1564 = param2;
         var_1565 = param3;
         var_1134 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1564;
      }
      
      public function get furniType() : int
      {
         return var_1565;
      }
      
      public function get price() : int
      {
         return var_1134;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
