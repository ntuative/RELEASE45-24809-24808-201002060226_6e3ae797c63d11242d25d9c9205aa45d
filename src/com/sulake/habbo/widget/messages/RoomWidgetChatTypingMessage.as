package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_505:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_432:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_505);
         var_432 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_432;
      }
   }
}
