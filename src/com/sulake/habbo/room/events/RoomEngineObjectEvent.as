package com.sulake.habbo.room.events
{
   public class RoomEngineObjectEvent extends RoomEngineEvent
   {
      
      public static const const_256:String = "REOB_OBJECT_ADDED";
      
      public static const const_380:String = "REOE_ROOM_AD_FURNI_CLICK";
      
      public static const const_69:String = "REOR_REMOVE_DIMMER";
      
      public static const const_107:String = "REOE_WIDGET_REQUEST_CREDITFURNI";
      
      public static const const_188:String = "REOB_OBJECT_PLACED";
      
      public static const const_103:String = "REOE_WIDGET_REQUEST_STICKIE";
      
      public static const const_412:String = "REOE_ROOM_AD_FURNI_DOUBLE_CLICK";
      
      public static const const_91:String = "REOE_WIDGET_REQUEST_DIMMER";
      
      public static const const_501:String = "REOE_OBJECT_REMOVED";
      
      public static const const_88:String = "REOE_WIDGET_REQUEST_PLACEHOLDER";
      
      public static const const_99:String = "REOE_WIDGET_REQUEST_ECOTRONBOX";
      
      public static const const_435:String = "REOE_ROOM_AD_TOOLTIP_SHOW";
      
      public static const const_599:String = "REOE_OBJECT_SELECTED";
      
      public static const const_338:String = "REOE_OBJECT_DESELECTED";
      
      public static const const_376:String = "REOE_ROOM_AD_TOOLTIP_HIDE";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_PRESENT:String = "REOE_WIDGET_REQUEST_PRESENT";
      
      public static const const_712:String = "REOB_OBJECT_REQUEST_MOVE";
      
      public static const const_95:String = "REOE_WIDGET_REQUEST_TROPHY";
       
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_138:int;
      
      private var _category:int;
      
      public function RoomEngineObjectEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param6,param7);
         var_138 = param4;
         _category = param5;
      }
      
      public function get objectId() : int
      {
         return var_138;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
