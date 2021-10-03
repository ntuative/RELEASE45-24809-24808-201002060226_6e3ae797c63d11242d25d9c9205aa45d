package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1329:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1222:int;
      
      private var var_902:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_902 = param2;
         var_1222 = param3;
      }
      
      public function get classId() : int
      {
         return var_1222;
      }
      
      public function get itemType() : String
      {
         return var_902;
      }
   }
}
