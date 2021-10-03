package com.sulake.habbo.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const DIMMER_STATE:String = "RWDSUE_DIMMER_STATE";
       
      
      private var var_1033:int;
      
      private var _color:uint;
      
      private var var_1032:int;
      
      private var var_1647:int;
      
      private var var_30:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(DIMMER_STATE,param6,param7);
         var_30 = param1;
         var_1647 = param2;
         var_1033 = param3;
         _color = param4;
         var_1032 = param5;
      }
      
      public function get brightness() : uint
      {
         return var_1032;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1033;
      }
      
      public function get state() : int
      {
         return var_30;
      }
      
      public function get presetId() : int
      {
         return var_1647;
      }
   }
}
