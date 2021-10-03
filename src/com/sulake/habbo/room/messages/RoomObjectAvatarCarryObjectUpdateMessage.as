package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_902:int;
      
      private var var_1080:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_902 = param1;
         var_1080 = param2;
      }
      
      public function get itemType() : int
      {
         return var_902;
      }
      
      public function get itemName() : String
      {
         return var_1080;
      }
   }
}
