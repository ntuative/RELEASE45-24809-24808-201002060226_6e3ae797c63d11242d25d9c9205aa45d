package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectDimmerStateUpdateEvent extends RoomObjectEvent
   {
      
      public static const DIMMER_STATE:String = "RODSUE_DIMMER_STATE";
       
      
      private var var_1033:int;
      
      private var _color:uint;
      
      private var var_1032:int;
      
      private var var_1647:int;
      
      private var var_30:int;
      
      public function RoomObjectDimmerStateUpdateEvent(param1:int, param2:String, param3:int, param4:int, param5:int, param6:uint, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(DIMMER_STATE,param1,param2,param8,param9);
         var_30 = param3;
         var_1647 = param4;
         var_1033 = param5;
         _color = param6;
         var_1032 = param7;
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
