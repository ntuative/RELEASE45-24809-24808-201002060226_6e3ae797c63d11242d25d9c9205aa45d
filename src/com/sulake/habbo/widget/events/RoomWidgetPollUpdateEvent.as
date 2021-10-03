package com.sulake.habbo.widget.events
{
   public class RoomWidgetPollUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_101:String = "RWPUW_CONTENT";
      
      public static const const_92:String = "RWPUW_OFFER";
      
      public static const const_43:String = "RWPUW_ERROR";
       
      
      private var var_951:Array = null;
      
      private var var_1131:String = "";
      
      private var var_1087:String;
      
      private var var_1132:String = "";
      
      private var var_952:int = 0;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollUpdateEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         _id = param1;
         super(param2,param3,param4);
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
