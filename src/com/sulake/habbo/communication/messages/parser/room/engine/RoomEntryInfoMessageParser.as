package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1952:int;
      
      private var var_388:Boolean;
      
      private var var_1953:Boolean;
      
      private var var_815:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1953 = param1.readBoolean();
         if(var_1953)
         {
            var_1952 = param1.readInteger();
            var_388 = param1.readBoolean();
         }
         else
         {
            var_815 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_815 != null)
         {
            var_815.dispose();
            var_815 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1952;
      }
      
      public function get owner() : Boolean
      {
         return var_388;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1953;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_815;
      }
   }
}
