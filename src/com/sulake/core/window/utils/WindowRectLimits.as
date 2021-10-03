package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_376:int = -2147483648;
      
      private var var_375:int = 2147483647;
      
      private var var_374:int = 2147483647;
      
      private var _target:IWindow;
      
      private var var_373:int = -2147483648;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_375;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_373 == int.MIN_VALUE && var_375 == int.MAX_VALUE && var_376 == int.MIN_VALUE && var_374 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_375 = param1;
         if(var_375 < int.MAX_VALUE && true && _target.width > var_375)
         {
            _target.width = var_375;
         }
      }
      
      public function setEmpty() : void
      {
         var_373 = int.MIN_VALUE;
         var_375 = int.MAX_VALUE;
         var_376 = int.MIN_VALUE;
         var_374 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_374 = param1;
         if(var_374 < int.MAX_VALUE && true && _target.height > var_374)
         {
            _target.height = var_374;
         }
      }
      
      public function get minHeight() : int
      {
         return var_376;
      }
      
      public function get minWidth() : int
      {
         return var_373;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_373 = var_373;
         _loc2_.var_375 = var_375;
         _loc2_.var_376 = var_376;
         _loc2_.var_374 = var_374;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_373 = param1;
         if(var_373 > int.MIN_VALUE && true && _target.width < var_373)
         {
            _target.width = var_373;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_376 = param1;
         if(var_376 > int.MIN_VALUE && true && _target.height < var_376)
         {
            _target.height = var_376;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_374;
      }
   }
}
