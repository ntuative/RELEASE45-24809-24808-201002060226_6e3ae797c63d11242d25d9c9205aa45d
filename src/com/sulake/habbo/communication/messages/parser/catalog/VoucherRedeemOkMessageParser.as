package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1183:String = "";
      
      private var var_1184:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1184 = "";
         var_1183 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1183;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1184 = param1.readString();
         var_1183 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1184;
      }
   }
}
