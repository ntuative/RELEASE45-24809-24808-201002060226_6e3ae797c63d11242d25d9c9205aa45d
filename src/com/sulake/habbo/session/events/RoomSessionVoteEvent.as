package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_96:String = "RSPE_VOTE_RESULT";
      
      public static const const_108:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1181:int = 0;
      
      private var var_963:String = "";
      
      private var var_615:Array;
      
      private var var_930:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_930 = [];
         var_615 = [];
         super(param1,param2,param7,param8);
         var_963 = param3;
         var_930 = param4;
         var_615 = param5;
         if(var_615 == null)
         {
            var_615 = [];
         }
         var_1181 = param6;
      }
      
      public function get votes() : Array
      {
         return var_615.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1181;
      }
      
      public function get question() : String
      {
         return var_963;
      }
      
      public function get choices() : Array
      {
         return var_930.slice();
      }
   }
}
