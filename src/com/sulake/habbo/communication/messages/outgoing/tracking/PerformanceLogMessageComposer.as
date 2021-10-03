package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_966:int = 0;
      
      private var var_1291:int = 0;
      
      private var var_1840:String = "";
      
      private var var_967:int = 0;
      
      private var var_2146:String = "";
      
      private var var_2144:int = 0;
      
      private var var_1427:String = "";
      
      private var var_2145:int = 0;
      
      private var var_2147:int = 0;
      
      private var var_1836:String = "";
      
      private var var_2148:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2145 = param1;
         var_1836 = param2;
         var_1427 = param3;
         var_1840 = param4;
         var_2146 = param5;
         if(param6)
         {
            var_1291 = 1;
         }
         else
         {
            var_1291 = 0;
         }
         var_2144 = param7;
         var_2147 = param8;
         var_967 = param9;
         var_2148 = param10;
         var_966 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2145,var_1836,var_1427,var_1840,var_2146,var_1291,var_2144,var_2147,var_967,var_2148,var_966];
      }
      
      public function dispose() : void
      {
      }
   }
}
