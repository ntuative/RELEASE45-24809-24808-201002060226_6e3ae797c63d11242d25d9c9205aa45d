package com.sulake.habbo.messenger
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.SendMsgMessageComposer;
   import com.sulake.habbo.messenger.domain.Conversation;
   import com.sulake.habbo.messenger.domain.Message;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class MessengerView
   {
       
      
      private var var_1077:ConversationView;
      
      private var var_11:IFrameWindow;
      
      private var var_727:ConversationsTabView;
      
      private var var_462:Timer;
      
      private var var_114:HabboMessenger;
      
      private var var_614:ITextFieldWindow;
      
      public function MessengerView(param1:HabboMessenger)
      {
         super();
         var_114 = param1;
         var_462 = new Timer(300,1);
         var_462.addEventListener(TimerEvent.TIMER,onResizeTimer);
      }
      
      public function addMsgToView(param1:Conversation, param2:Message) : void
      {
         if(var_11 == null)
         {
            return;
         }
         if(!param1.selected)
         {
            return;
         }
         var_1077.addMessage(param2);
      }
      
      private function onResizeTimer(param1:TimerEvent) : void
      {
         Logger.log("XXX RESIZE XXX");
         this.var_1077.afterResize();
         this.var_727.refresh();
      }
      
      private function onMessageInput(param1:Event) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = param1 as WindowKeyboardEvent;
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            sendMsg();
         }
         else
         {
            _loc4_ = 120;
            _loc5_ = "null";
            if(_loc5_.length > _loc4_)
            {
               var_614.text = _loc5_.substring(0,_loc4_);
            }
         }
      }
      
      public function getTabCount() : int
      {
         return this.var_727 == null ? 7 : int(this.var_727.getTabCount());
      }
      
      public function openMessenger() : void
      {
         if(var_114.conversations.openConversations.length < 1)
         {
            return;
         }
         if(var_11 == null)
         {
            prepareContent();
            refresh(true);
            var_114.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_29,HabboToolbarIconEnum.MESSENGER,var_11));
         }
         else
         {
            refresh(true);
            var_11.visible = true;
            var_11.activate();
         }
      }
      
      private function sendMsg() : void
      {
         var _loc1_:String = "null";
         Logger.log("Send msg: " + _loc1_);
         if(_loc1_ == "")
         {
            Logger.log("No text...");
            return;
         }
         var _loc2_:Conversation = var_114.conversations.findSelectedConversation();
         if(_loc2_ == null)
         {
            Logger.log("No conversation...");
            return;
         }
         var_114.send(new SendMsgMessageComposer(_loc2_.id,_loc1_));
         var_614.text = "";
         var_114.conversations.addMessageAndUpdateView(new Message(Message.const_716,_loc2_.id,_loc1_,Util.getFormattedNow()));
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_26 || param2 != var_11)
         {
            return;
         }
         if(!this.var_462.running)
         {
            this.var_462.reset();
            this.var_462.start();
         }
      }
      
      private function prepareContent() : void
      {
         var_11 = IFrameWindow(var_114.getXmlWindow("main_window"));
         var _loc1_:IWindow = var_11.findChildByTag("close");
         _loc1_.procedure = onWindowClose;
         var_11.procedure = onWindow;
         var_11.title.color = 4294623744;
         var_11.title.textColor = 4287851525;
         var_727 = new ConversationsTabView(var_114,var_11);
         var_727.refresh();
         var_614 = ITextFieldWindow(var_11.findChildByName("message_input"));
         var_614.addEventListener(WindowKeyboardEvent.const_115,onMessageInput);
         var_1077 = new ConversationView(var_114,var_11);
         var_11.scaler.setParamFlag(HabboWindowParam.const_552,false);
         var_11.scaler.setParamFlag(HabboWindowParam.const_939,true);
      }
      
      public function isMessengerOpen() : Boolean
      {
         return var_11 != null && false;
      }
      
      public function refresh(param1:Boolean) : void
      {
         if(var_11 == null)
         {
            return;
         }
         var _loc2_:Conversation = var_114.conversations.findSelectedConversation();
         var_11.caption = _loc2_ == null ? "" : _loc2_.name;
         var_727.refresh();
         var_1077.refresh();
         if(var_114.conversations.openConversations.length < 1)
         {
            var_11.visible = false;
            var_114.setHabboToolbarIcon(false,false);
         }
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_11.visible = false;
      }
      
      public function close() : void
      {
         if(var_11 != null)
         {
            var_11.visible = false;
         }
      }
   }
}
