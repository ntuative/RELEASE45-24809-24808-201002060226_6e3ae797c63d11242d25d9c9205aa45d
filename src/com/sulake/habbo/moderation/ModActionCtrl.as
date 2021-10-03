package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.moderation.INamed;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceData;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModAlertMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModBanMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModKickMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class ModActionCtrl implements IDisposable, TrackedWindow
   {
      
      private static var var_119:Array;
       
      
      private var _disposed:Boolean;
      
      private var var_759:IButtonWindow;
      
      private var var_1120:int;
      
      private var var_41:ModerationManager;
      
      private var var_624:OffenceCategoryData;
      
      private var var_362:ITextFieldWindow;
      
      private var var_758:IButtonWindow;
      
      private var var_1119:String;
      
      private var var_297:Boolean = true;
      
      private var var_1403:String;
      
      private var var_760:IDropMenuWindow;
      
      private var var_45:IFrameWindow;
      
      private var var_623:OffenceData;
      
      public function ModActionCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_41 = param1;
         var_1120 = param2;
         var_1403 = param3;
         var_1119 = param4;
         if(var_119 == null)
         {
            var_119 = new Array();
            var_119.push(new BanDefinition("2 hours",2));
            var_119.push(new BanDefinition("4 hours",4));
            var_119.push(new BanDefinition("12 hours",12));
            var_119.push(new BanDefinition("24 hours",24));
            var_119.push(new BanDefinition("2 days",48));
            var_119.push(new BanDefinition("3 days",72));
            var_119.push(new BanDefinition("1 week",168));
            var_119.push(new BanDefinition("2 weeks",336));
            var_119.push(new BanDefinition("3 weeks",504));
            var_119.push(new BanDefinition("1 month",720));
            var_119.push(new BanDefinition("2 months",1440));
            var_119.push(new BanDefinition("1 year",8760));
            var_119.push(new BanDefinition("2 years",17520));
            var_119.push(new BanDefinition("Permanent",100000));
         }
         var_759 = IButtonWindow(var_41.getXmlWindow("modact_offence"));
         var_758 = IButtonWindow(var_41.getXmlWindow("modact_offencectg"));
      }
      
      public static function hideChildren(param1:IWindowContainer) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.numChildren)
         {
            param1.getChildAt(_loc2_).visible = false;
            _loc2_++;
         }
      }
      
      private function onBanButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Ban...");
         if(!isMsgGiven())
         {
            return;
         }
         if(this.var_760.selection < 0)
         {
            var_41.windowManager.alert("Alert","You must select ban lenght",0,onAlertClose);
            return;
         }
         var_41.connection.send(new ModBanMessageComposer(var_1120,var_362.text,getBanLength(),var_1119));
         this.dispose();
      }
      
      public function getId() : String
      {
         return var_1403;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_181)
         {
            return;
         }
         if(!var_297)
         {
            return;
         }
         var_362.text = "";
         var_297 = false;
      }
      
      private function getBanLength() : int
      {
         var _loc1_:int = this.var_760.selection;
         var _loc2_:BanDefinition = var_119[_loc1_];
         return _loc2_.banLengthHours;
      }
      
      private function prepareBanSelect(param1:IDropMenuWindow) : void
      {
         var _loc3_:* = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in var_119)
         {
            _loc2_.push(_loc3_.name);
         }
         param1.populate(_loc2_);
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function refreshButtons(param1:String, param2:int, param3:Array, param4:IWindow, param5:Function) : void
      {
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc6_:IWindowContainer = IWindowContainer(var_45.findChildByName(param1));
         hideChildren(_loc6_);
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         for each(_loc11_ in param3)
         {
            _loc12_ = "" + _loc7_;
            _loc13_ = IButtonWindow(_loc6_.findChildByName(_loc12_));
            if(_loc13_ == null)
            {
               _loc13_ = IButtonWindow(param4.clone());
               _loc13_.procedure = param5;
               _loc13_.x = _loc9_ * (param4.width + 5);
               _loc13_.y = _loc8_ * (param4.height + 5);
               _loc13_.name = _loc12_;
               _loc6_.addChild(_loc13_);
            }
            _loc13_.caption = _loc11_.name;
            _loc13_.visible = true;
            _loc7_++;
            _loc9_++;
            if(_loc9_ >= param2)
            {
               _loc9_ = 0;
               _loc8_++;
            }
         }
         _loc6_.height = RoomToolCtrl.getLowestPoint(_loc6_);
         _loc6_.visible = true;
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
         if(var_759 != null)
         {
            var_759.destroy();
            var_759 = null;
         }
         if(var_758 != null)
         {
            var_758.destroy();
            var_758 = null;
         }
         var_760 = null;
         var_362 = null;
         var_41 = null;
      }
      
      private function onSendCautionButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending caution...");
         if(!isMsgGiven())
         {
            return;
         }
         var_41.connection.send(new ModAlertMessageComposer(var_1120,var_362.text,var_1119));
         this.dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1341;
      }
      
      private function onChangeCategorizationButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(var_623 != null)
         {
            var_623 = null;
         }
         else
         {
            var_624 = null;
         }
         this.refreshCategorization();
      }
      
      private function onOffenceCtgButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = int(param2.name);
         var_624 = var_41.initMsg.offenceCategories[_loc3_];
         this.refreshCategorization();
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_45;
      }
      
      private function isMsgGiven() : Boolean
      {
         if(var_297 || false)
         {
            var_41.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return false;
         }
         return true;
      }
      
      private function onKickButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Kick...");
         if(!isMsgGiven())
         {
            return;
         }
         var_41.connection.send(new ModKickMessageComposer(var_1120,var_362.text,var_1119));
         this.dispose();
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      public function refreshCategorization() : void
      {
         var _loc1_:IWindowContainer = IWindowContainer(var_45.findChildByName("categorization_cont"));
         hideChildren(_loc1_);
         _loc1_.findChildByName("categorization_caption_txt").visible = true;
         _loc1_.findChildByName("change_categorization_but").visible = var_624 != null;
         if(this.var_623 != null)
         {
            var_45.findChildByName("offence_txt").caption = this.var_623.name;
            var_45.findChildByName("offence_category").visible = true;
         }
         else if(this.var_624 != null)
         {
            this.refreshButtons("offences_cont",2,var_624.offences,var_759,onOffenceButton);
         }
         else
         {
            this.refreshButtons("offence_categories_cont",3,var_41.initMsg.offenceCategories,var_758,onOffenceCtgButton);
            _loc1_.height = RoomToolCtrl.getLowestPoint(_loc1_);
         }
      }
      
      private function onOffenceButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = int(param2.name);
         var_623 = var_624.offences[_loc3_];
         var_362.text = var_623.msg;
         var_297 = false;
         this.refreshCategorization();
      }
      
      public function show() : void
      {
         var_45 = IFrameWindow(var_41.getXmlWindow("modact_summary"));
         var_45.caption = "Mod action on: " + var_1403;
         var_45.findChildByName("send_caution_but").procedure = onSendCautionButton;
         var_45.findChildByName("kick_but").procedure = onKickButton;
         var_45.findChildByName("ban_but").procedure = onBanButton;
         var_45.findChildByName("change_categorization_but").procedure = onChangeCategorizationButton;
         var_41.disableButton(var_41.initMsg.alertPermission,var_45,"send_caution_but");
         var_41.disableButton(var_41.initMsg.kickPermission,var_45,"kick_but");
         var_41.disableButton(var_41.initMsg.banPermission,var_45,"ban_but");
         var_362 = ITextFieldWindow(var_45.findChildByName("message_input"));
         var_362.procedure = onInputClick;
         var_760 = IDropMenuWindow(var_45.findChildByName("banLengthSelect"));
         prepareBanSelect(var_760);
         var _loc1_:IWindow = var_45.findChildByTag("close");
         _loc1_.procedure = onClose;
         refreshCategorization();
         var_45.visible = true;
      }
   }
}
