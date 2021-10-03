package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_101:String = "RSPE_POLL_CONTENT";
      
      public static const const_92:String = "RSPE_POLL_OFFER";
      
      public static const const_43:String = "RSPE_POLL_ERROR";
       
      
      private var var_951:Array = null;
      
      private var var_1131:String = "";
      
      private var var_1087:String;
      
      private var var_1132:String = "";
      
      private var var_952:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_951;
      }
      
      public function get startMessage() : String
      {
         return var_1131;
      }
      
      public function get summary() : String
      {
         return var_1087;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1131 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_952 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1087 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_952;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1132 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1132;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_951 = param1;
      }
   }
}
