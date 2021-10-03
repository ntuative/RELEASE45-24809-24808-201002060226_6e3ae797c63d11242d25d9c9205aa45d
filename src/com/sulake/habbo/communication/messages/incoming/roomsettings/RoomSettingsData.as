package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_384:int = 0;
      
      public static const const_112:int = 2;
      
      public static const const_140:int = 1;
      
      public static const const_594:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1751:Boolean;
      
      private var var_1750:Boolean;
      
      private var var_1765:int;
      
      private var var_1752:Array;
      
      private var var_1766:int;
      
      private var var_1747:Boolean;
      
      private var var_1068:String;
      
      private var var_1749:int;
      
      private var var_1748:int;
      
      private var var_1075:int;
      
      private var _roomId:int;
      
      private var var_589:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1749;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1749 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_589;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1747;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1766 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1752 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_589 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1751;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1750;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1765;
      }
      
      public function get categoryId() : int
      {
         return var_1075;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1747 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1766;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1752;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1748 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1751 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1750 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1748;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1075 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1068 = param1;
      }
      
      public function get description() : String
      {
         return var_1068;
      }
   }
}
