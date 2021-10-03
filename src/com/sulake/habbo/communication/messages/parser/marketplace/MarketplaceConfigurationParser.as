package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1629:int;
      
      private var var_1359:int;
      
      private var var_1633:int;
      
      private var var_1626:int;
      
      private var var_1631:int;
      
      private var var_1360:int;
      
      private var var_1632:int;
      
      private var var_1630:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1629;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1359;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1632;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1626;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1631;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1360;
      }
      
      public function get commission() : int
      {
         return var_1633;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1630 = param1.readBoolean();
         var_1633 = param1.readInteger();
         var_1359 = param1.readInteger();
         var_1360 = param1.readInteger();
         var_1626 = param1.readInteger();
         var_1629 = param1.readInteger();
         var_1631 = param1.readInteger();
         var_1632 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1630;
      }
   }
}
