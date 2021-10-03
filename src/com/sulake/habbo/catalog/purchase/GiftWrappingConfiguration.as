package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_511:Array;
      
      private var var_1134:int;
      
      private var var_1351:Array;
      
      private var var_512:Array;
      
      private var var_1630:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1630 = _loc2_.isWrappingEnabled;
         var_1134 = _loc2_.wrappingPrice;
         var_1351 = _loc2_.stuffTypes;
         var_512 = _loc2_.boxTypes;
         var_511 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_511;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1351;
      }
      
      public function get price() : int
      {
         return var_1134;
      }
      
      public function get boxTypes() : Array
      {
         return var_512;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1630;
      }
   }
}
