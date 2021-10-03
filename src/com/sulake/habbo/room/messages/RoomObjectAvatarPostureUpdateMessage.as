package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1668:String;
      
      private var var_868:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1668 = param1;
         var_868 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1668;
      }
      
      public function get parameter() : String
      {
         return var_868;
      }
   }
}
