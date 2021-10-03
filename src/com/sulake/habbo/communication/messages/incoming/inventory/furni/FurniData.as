package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1324:String;
      
      private var var_902:String;
      
      private var var_1577:Boolean;
      
      private var var_1388:int;
      
      private var var_1572:int;
      
      private var var_1575:Boolean;
      
      private var var_1574:String = "";
      
      private var var_1571:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1222:int;
      
      private var var_1576:Boolean;
      
      private var var_1918:int = -1;
      
      private var var_1573:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1572 = param1;
         var_902 = param2;
         _objId = param3;
         var_1222 = param4;
         _category = param5;
         var_1324 = param6;
         var_1577 = param7;
         var_1571 = param8;
         var_1576 = param9;
         var_1575 = param10;
         var_1573 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1574;
      }
      
      public function get extra() : int
      {
         return var_1388;
      }
      
      public function get classId() : int
      {
         return var_1222;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1575;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1577;
      }
      
      public function get stripId() : int
      {
         return var_1572;
      }
      
      public function get stuffData() : String
      {
         return var_1324;
      }
      
      public function get songId() : int
      {
         return var_1918;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1574 = param1;
         var_1388 = param2;
      }
      
      public function get itemType() : String
      {
         return var_902;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1573;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1576;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1571;
      }
   }
}
