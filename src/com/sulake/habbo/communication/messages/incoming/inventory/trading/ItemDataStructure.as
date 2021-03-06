package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_902:String;
      
      private var var_1702:int;
      
      private var var_1700:int;
      
      private var var_1388:int;
      
      private var var_1704:int;
      
      private var _category:int;
      
      private var var_2338:int;
      
      private var var_1699:int;
      
      private var var_1705:int;
      
      private var var_1698:int;
      
      private var var_1701:int;
      
      private var var_1703:Boolean;
      
      private var var_1324:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1702 = param1;
         var_902 = param2;
         var_1700 = param3;
         var_1698 = param4;
         _category = param5;
         var_1324 = param6;
         var_1388 = param7;
         var_1705 = param8;
         var_1699 = param9;
         var_1701 = param10;
         var_1704 = param11;
         var_1703 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1698;
      }
      
      public function get extra() : int
      {
         return var_1388;
      }
      
      public function get stuffData() : String
      {
         return var_1324;
      }
      
      public function get groupable() : Boolean
      {
         return var_1703;
      }
      
      public function get creationMonth() : int
      {
         return var_1701;
      }
      
      public function get roomItemID() : int
      {
         return var_1700;
      }
      
      public function get itemType() : String
      {
         return var_902;
      }
      
      public function get itemID() : int
      {
         return var_1702;
      }
      
      public function get songID() : int
      {
         return var_1388;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1705;
      }
      
      public function get creationYear() : int
      {
         return var_1704;
      }
      
      public function get creationDay() : int
      {
         return var_1699;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
