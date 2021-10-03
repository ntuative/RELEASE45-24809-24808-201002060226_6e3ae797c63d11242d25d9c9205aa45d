package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_111:DisplayObject;
      
      private var var_2286:uint;
      
      private var var_785:IWindowToolTipAgentService;
      
      private var var_788:IWindowMouseScalingService;
      
      private var var_366:IWindowContext;
      
      private var var_789:IWindowFocusManagerService;
      
      private var var_786:IWindowMouseListenerService;
      
      private var var_787:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2286 = 0;
         var_111 = param2;
         var_366 = param1;
         var_787 = new WindowMouseDragger(param2);
         var_788 = new WindowMouseScaler(param2);
         var_786 = new WindowMouseListener(param2);
         var_789 = new FocusManager(param2);
         var_785 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_788;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_789;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_785;
      }
      
      public function dispose() : void
      {
         if(var_787 != null)
         {
            var_787.dispose();
            var_787 = null;
         }
         if(var_788 != null)
         {
            var_788.dispose();
            var_788 = null;
         }
         if(var_786 != null)
         {
            var_786.dispose();
            var_786 = null;
         }
         if(var_789 != null)
         {
            var_789.dispose();
            var_789 = null;
         }
         if(var_785 != null)
         {
            var_785.dispose();
            var_785 = null;
         }
         var_366 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_786;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_787;
      }
   }
}
