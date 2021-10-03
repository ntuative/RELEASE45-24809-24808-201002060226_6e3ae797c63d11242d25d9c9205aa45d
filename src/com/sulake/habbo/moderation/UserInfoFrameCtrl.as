package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   
   public class UserInfoFrameCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_840:UserInfoCtrl;
      
      private var _disposed:Boolean;
      
      private var _userId:int;
      
      private var var_45:IFrameWindow;
      
      private var var_41:ModerationManager;
      
      public function UserInfoFrameCtrl(param1:ModerationManager, param2:int)
      {
         super();
         var_41 = param1;
         _userId = param2;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_45 != null)
         {
            var_45.destroy();
            var_45 = null;
         }
         if(var_840 != null)
         {
            var_840.dispose();
            var_840 = null;
         }
         var_41 = null;
      }
      
      public function getId() : String
      {
         return "" + _userId;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1251;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      public function show() : void
      {
         var_45 = IFrameWindow(var_41.getXmlWindow("user_info_frame"));
         var_45.caption = "User Info";
         var _loc1_:IWindow = var_45.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_840 = new UserInfoCtrl(var_45,var_41,"",true);
         var_840.load(var_45.content,_userId);
         var_45.visible = true;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_45;
      }
   }
}
