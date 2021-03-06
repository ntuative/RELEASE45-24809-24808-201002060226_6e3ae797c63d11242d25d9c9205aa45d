package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1116:int;
      
      private var var_1112:int;
      
      private var var_1117:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1116;
      }
      
      public function flush() : Boolean
      {
         var_1112 = 0;
         var_1116 = 0;
         var_1117 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1112;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1116 = param1.readInteger();
         var_1112 = param1.readInteger();
         var_1117 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1117;
      }
   }
}
