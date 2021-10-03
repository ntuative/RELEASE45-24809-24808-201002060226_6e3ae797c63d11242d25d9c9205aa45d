package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_692:String;
      
      private var var_1964:int;
      
      private var var_1473:Boolean;
      
      private var _roomId:int;
      
      private var var_1963:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1473 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_692 = param1.readString();
         var_1963 = param1.readInteger();
         var_1964 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1473;
      }
      
      public function get roomName() : String
      {
         return var_692;
      }
      
      public function get enterMinute() : int
      {
         return var_1964;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1963;
      }
   }
}
