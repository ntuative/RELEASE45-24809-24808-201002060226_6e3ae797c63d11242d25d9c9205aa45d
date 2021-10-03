package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_100:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1153:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_100);
         var_1153 = param1;
      }
      
      public function get vote() : int
      {
         return var_1153;
      }
   }
}
