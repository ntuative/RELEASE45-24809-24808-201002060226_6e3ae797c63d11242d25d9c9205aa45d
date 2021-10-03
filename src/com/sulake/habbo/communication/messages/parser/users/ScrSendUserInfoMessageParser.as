package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2083:int;
      
      private var var_1183:String;
      
      private var var_2079:int;
      
      private var var_2081:int;
      
      private var var_2080:int;
      
      private var var_2082:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1183;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2082;
      }
      
      public function get responseType() : int
      {
         return var_2081;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2079;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1183 = param1.readString();
         var_2079 = param1.readInteger();
         var_2083 = param1.readInteger();
         var_2080 = param1.readInteger();
         var_2081 = param1.readInteger();
         var_2082 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2083;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2080;
      }
   }
}
