package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ClubGiftSelectedParser implements IMessageParser
   {
       
      
      private var var_2014:String;
      
      private var var_868:String;
      
      private var var_1191:int;
      
      private var var_1222:int;
      
      private var var_1233:String;
      
      public function ClubGiftSelectedParser()
      {
         super();
      }
      
      public function get classId() : int
      {
         return var_1222;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1233 = param1.readString();
         var_2014 = param1.readString();
         var_1222 = param1.readInteger();
         var_868 = param1.readString();
         var_1191 = param1.readInteger();
         return true;
      }
      
      public function get contentType() : String
      {
         return var_2014;
      }
      
      public function get productCode() : String
      {
         return var_1233;
      }
   }
}
