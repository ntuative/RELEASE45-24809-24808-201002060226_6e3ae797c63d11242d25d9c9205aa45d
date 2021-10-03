package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1910:Boolean = false;
      
      private var var_1911:int = 0;
      
      private var var_1903:int = 0;
      
      private var var_1912:int = 0;
      
      private var var_1404:int = 0;
      
      private var var_1902:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1404 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1911;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1910;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1910 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1911 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1903 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1404;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1912 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1903;
      }
      
      public function get pixelBalance() : int
      {
         return var_1912;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1902 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1902;
      }
   }
}
