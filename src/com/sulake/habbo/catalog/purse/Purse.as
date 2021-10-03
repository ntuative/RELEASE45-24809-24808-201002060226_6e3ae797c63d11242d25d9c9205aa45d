package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1903:int = 0;
      
      private var var_1901:int = 0;
      
      private var var_1653:int = 0;
      
      private var var_1902:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1901;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1901 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1903 = param1;
      }
      
      public function get credits() : int
      {
         return var_1653;
      }
      
      public function get clubDays() : int
      {
         return var_1903;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1902 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1653 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1902;
      }
   }
}
