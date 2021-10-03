package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_420:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_312:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_718:int;
      
      private var var_237:Boolean;
      
      private var var_2040:Boolean;
      
      private var var_1378:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_718 = param2;
         var_2040 = param3;
         var_237 = param4;
         var_1378 = param5;
      }
      
      public function get position() : int
      {
         return var_718;
      }
      
      public function get isActive() : Boolean
      {
         return var_237;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1378;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2040;
      }
   }
}
