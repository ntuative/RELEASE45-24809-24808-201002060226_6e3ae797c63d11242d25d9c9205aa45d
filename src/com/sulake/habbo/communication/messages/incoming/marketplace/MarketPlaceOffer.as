package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1134:int;
      
      private var var_1791:int = -1;
      
      private var var_349:int;
      
      private var var_1757:int;
      
      private var var_1565:int;
      
      private var _offerId:int;
      
      private var var_1133:int;
      
      private var var_1564:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1564 = param2;
         var_1565 = param3;
         var_1134 = param4;
         var_349 = param5;
         var_1791 = param6;
         var_1757 = param7;
         var_1133 = param8;
      }
      
      public function get status() : int
      {
         return var_349;
      }
      
      public function get price() : int
      {
         return var_1134;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1791;
      }
      
      public function get offerCount() : int
      {
         return var_1133;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1565;
      }
      
      public function get averagePrice() : int
      {
         return var_1757;
      }
      
      public function get furniId() : int
      {
         return var_1564;
      }
   }
}
