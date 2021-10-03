package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_106:int = 0;
      
      public static const const_113:int = 1;
      
      public static const const_80:int = 2;
      
      public static const const_593:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1144:int = 0;
      
      private var var_1746:String = "";
      
      private var var_176:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_176 = param2;
         var_1144 = param3;
         var_1746 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1746;
      }
      
      public function get chatType() : int
      {
         return var_1144;
      }
      
      public function get text() : String
      {
         return var_176;
      }
   }
}
