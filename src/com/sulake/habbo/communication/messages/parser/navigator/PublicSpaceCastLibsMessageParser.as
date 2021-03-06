package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PublicSpaceCastLibsMessageParser implements IMessageParser
   {
       
      
      private var var_2048:int;
      
      private var var_2050:String;
      
      private var var_1251:int;
      
      public function PublicSpaceCastLibsMessageParser()
      {
         super();
      }
      
      public function get unitPort() : int
      {
         return var_2048;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get castLibs() : String
      {
         return var_2050;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1251 = param1.readInteger();
         this.var_2050 = param1.readString();
         this.var_2048 = param1.readInteger();
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1251;
      }
   }
}
