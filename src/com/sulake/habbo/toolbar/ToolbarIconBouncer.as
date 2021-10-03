package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1617:Number;
      
      private var var_509:Number = 0;
      
      private var var_1616:Number;
      
      private var var_510:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1617 = param1;
         var_1616 = param2;
      }
      
      public function update() : void
      {
         var_510 += var_1616;
         var_509 += var_510;
         if(var_509 > 0)
         {
            var_509 = 0;
            var_510 = var_1617 * -1 * var_510;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_510 = param1;
         var_509 = 0;
      }
      
      public function get location() : Number
      {
         return var_509;
      }
   }
}
