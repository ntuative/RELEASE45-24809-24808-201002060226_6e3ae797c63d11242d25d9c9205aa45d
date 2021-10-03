package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1749:int;
      
      private var var_1748:int;
      
      private var var_1751:Boolean;
      
      private var var_1750:Boolean;
      
      private var var_1752:Array;
      
      private var var_1747:Boolean;
      
      private var var_1075:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_589:Array;
      
      private var var_1068:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1748;
      }
      
      public function get description() : String
      {
         return var_1068;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1750;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1749;
      }
      
      public function set description(param1:String) : void
      {
         var_1068 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1747 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1749 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1075;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1752;
      }
      
      public function get tags() : Array
      {
         return var_589;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1747;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1748 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1751 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_589 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1752 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1075 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1751;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1750 = param1;
      }
   }
}
