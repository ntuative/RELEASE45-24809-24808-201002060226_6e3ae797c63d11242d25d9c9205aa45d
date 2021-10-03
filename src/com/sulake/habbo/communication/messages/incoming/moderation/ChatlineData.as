package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1365:String;
      
      private var var_1987:int;
      
      private var var_1989:int;
      
      private var var_1990:int;
      
      private var var_1988:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1987 = param1.readInteger();
         var_1990 = param1.readInteger();
         var_1989 = param1.readInteger();
         var_1988 = param1.readString();
         var_1365 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1365;
      }
      
      public function get hour() : int
      {
         return var_1987;
      }
      
      public function get minute() : int
      {
         return var_1990;
      }
      
      public function get chatterName() : String
      {
         return var_1988;
      }
      
      public function get chatterId() : int
      {
         return var_1989;
      }
   }
}
