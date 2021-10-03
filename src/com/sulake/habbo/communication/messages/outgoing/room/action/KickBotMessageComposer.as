package com.sulake.habbo.communication.messages.outgoing.room.action
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class KickBotMessageComposer implements IMessageComposer
   {
       
      
      private var var_1679:int;
      
      public function KickBotMessageComposer(param1:int)
      {
         super();
         var_1679 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1679];
      }
      
      public function dispose() : void
      {
      }
   }
}
