package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1572:int;
      
      private var var_1571:Boolean;
      
      private var var_1918:int;
      
      private var var_1324:String;
      
      private var var_2194:Boolean = false;
      
      private var var_1573:int;
      
      private var var_414:int;
      
      private var var_902:String;
      
      private var var_1574:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1222:int;
      
      private var var_1576:Boolean;
      
      private var var_2195:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1572 = param1;
         var_902 = param2;
         _objId = param3;
         var_1222 = param4;
         var_1324 = param5;
         var_1571 = param6;
         var_1576 = param7;
         var_1573 = param8;
         var_1574 = param9;
         var_1918 = param10;
         var_414 = -1;
      }
      
      public function get songId() : int
      {
         return var_1918;
      }
      
      public function get iconCallbackId() : int
      {
         return var_414;
      }
      
      public function get expiryTime() : int
      {
         return var_1573;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2195 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2194 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_414 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1576;
      }
      
      public function get slotId() : String
      {
         return var_1574;
      }
      
      public function get classId() : int
      {
         return var_1222;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1571;
      }
      
      public function get stuffData() : String
      {
         return var_1324;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1572;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2194;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2195;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_902;
      }
   }
}
