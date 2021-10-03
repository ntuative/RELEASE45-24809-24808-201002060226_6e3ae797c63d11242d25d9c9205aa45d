package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1292:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_857:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1292 = param1;
         var_857 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_857;
      }
      
      public function get identifier() : IID
      {
         return var_1292;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1292 = null;
            while(false)
            {
               var_857.pop();
            }
            var_857 = null;
         }
      }
   }
}
