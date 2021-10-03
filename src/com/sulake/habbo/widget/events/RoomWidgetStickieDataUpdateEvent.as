package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_637:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_176:String;
      
      private var var_662:String;
      
      private var var_1460:String;
      
      private var var_138:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_138 = param2;
         var_1460 = param3;
         var_176 = param4;
         var_662 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1460;
      }
      
      public function get colorHex() : String
      {
         return var_662;
      }
      
      public function get text() : String
      {
         return var_176;
      }
      
      public function get objectId() : int
      {
         return var_138;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
