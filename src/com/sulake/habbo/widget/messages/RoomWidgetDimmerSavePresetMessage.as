package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_512:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1967:int;
      
      private var var_1970:int;
      
      private var var_2056:Boolean;
      
      private var var_1032:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_512);
         var_1970 = param1;
         var_1967 = param2;
         _color = param3;
         var_1032 = param4;
         var_2056 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1967;
      }
      
      public function get presetNumber() : int
      {
         return var_1970;
      }
      
      public function get brightness() : int
      {
         return var_1032;
      }
      
      public function get apply() : Boolean
      {
         return var_2056;
      }
   }
}
