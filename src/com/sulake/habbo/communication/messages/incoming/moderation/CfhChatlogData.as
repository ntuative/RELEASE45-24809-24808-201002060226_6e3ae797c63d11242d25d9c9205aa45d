package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_941:int;
      
      private var var_2028:int;
      
      private var var_1486:int;
      
      private var var_108:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1486 = param1.readInteger();
         var_2028 = param1.readInteger();
         var_941 = param1.readInteger();
         var_108 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1486);
      }
      
      public function get reportedUserId() : int
      {
         return var_941;
      }
      
      public function get callerUserId() : int
      {
         return var_2028;
      }
      
      public function get callId() : int
      {
         return var_1486;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_108;
      }
   }
}
