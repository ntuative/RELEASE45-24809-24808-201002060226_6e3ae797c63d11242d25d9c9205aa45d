package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_664:IWindowContainer;
      
      private var var_998:ITextWindow;
      
      private var var_181:RoomSettingsCtrl;
      
      private var var_1226:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_457:Timer;
      
      private var var_1225:ITextWindow;
      
      private var var_328:IWindowContainer;
      
      private var var_1972:IWindowContainer;
      
      private var var_1971:ITextWindow;
      
      private var var_823:IWindowContainer;
      
      private var var_1470:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_692:ITextWindow;
      
      private var var_1471:IWindowContainer;
      
      private var var_1230:IWindowContainer;
      
      private var var_821:ITextWindow;
      
      private var var_997:ITextFieldWindow;
      
      private var var_286:IWindowContainer;
      
      private var var_824:ITextWindow;
      
      private var var_1469:IButtonWindow;
      
      private var var_996:ITextWindow;
      
      private var var_2292:int;
      
      private var var_1224:IContainerButtonWindow;
      
      private var var_822:IWindowContainer;
      
      private var var_1228:ITextWindow;
      
      private var var_1229:IContainerButtonWindow;
      
      private var var_1468:ITextWindow;
      
      private var var_1467:IButtonWindow;
      
      private var var_925:TagRenderer;
      
      private var var_1808:ITextWindow;
      
      private var var_327:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_663:ITextWindow;
      
      private var var_248:RoomThumbnailCtrl;
      
      private var var_1227:IContainerButtonWindow;
      
      private var var_1973:IWindowContainer;
      
      private var var_249:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_327 = new RoomEventViewCtrl(_navigator);
         var_181 = new RoomSettingsCtrl(_navigator,this,true);
         var_248 = new RoomThumbnailCtrl(_navigator);
         var_925 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_181);
         var_457 = new Timer(6000,1);
         var_457.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_181.active = true;
         this.var_327.active = false;
         this.var_248.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1470.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1467.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1471.visible = Util.hasVisibleChildren(var_1471);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_692.text = param1.roomName;
         var_692.height = NaN;
         _ownerName.text = param1.ownerName;
         var_821.text = param1.description;
         var_925.refreshTags(var_328,param1.tags);
         var_821.visible = false;
         if(param1.description != "")
         {
            var_821.height = NaN;
            var_821.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_328,"thumb_up",_loc3_,method_7,0);
         _navigator.refreshButton(var_328,"thumb_down",_loc3_,onThumbDown,0);
         var_1971.visible = _loc3_;
         var_824.visible = !_loc3_;
         var_1468.visible = !_loc3_;
         var_1468.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_328,"home",param2,null,0);
         _navigator.refreshButton(var_328,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_328,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_692.y,0);
         var_328.visible = true;
         var_328.height = Util.getLowestPoint(var_328);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_430,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function method_7(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1469.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1226.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1227.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1224.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1229.visible = _navigator.data.canEditRoomSettings && param1;
         var_1230.visible = Util.hasVisibleChildren(var_1230);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_457.reset();
         this.var_327.active = false;
         this.var_181.active = false;
         this.var_248.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_29,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_457.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_457.reset();
         this.var_327.active = false;
         this.var_181.active = false;
         this.var_248.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_29,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_430,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_286);
         var_286.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_181.refresh(var_286);
         this.var_248.refresh(var_286);
         Util.moveChildrenToColumn(var_286,["room_details","room_buttons"],0,2);
         var_286.height = Util.getLowestPoint(var_286);
         var_286.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_997.setSelection(0,var_997.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_249);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_327.refresh(var_249);
         if(Util.hasVisibleChildren(var_249) && !this.var_248.active)
         {
            Util.moveChildrenToColumn(var_249,["event_details","event_buttons"],0,2);
            var_249.height = Util.getLowestPoint(var_249);
            var_249.visible = true;
         }
         else
         {
            var_249.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_457.reset();
         this.var_327.active = true;
         this.var_181.active = false;
         this.var_248.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_457.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_998.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_998.height = NaN;
         var_1225.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1225.height = NaN;
         Util.moveChildrenToColumn(var_664,["public_space_name","public_space_desc"],var_998.y,0);
         var_664.visible = true;
         var_664.height = Math.max(86,Util.getLowestPoint(var_664));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","ItemDataUpdateMessageEvent") == "true";
         if(_loc1_ && true && true && true)
         {
            var_822.visible = true;
            var_997.text = this.getEmbedData();
         }
         else
         {
            var_822.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_457.reset();
         this.var_181.load(param1);
         this.var_181.active = true;
         this.var_327.active = false;
         this.var_248.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_457.reset();
         this.var_181.active = false;
         this.var_327.active = false;
         this.var_248.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_50,false);
         _window.setParamFlag(HabboWindowParam.const_1214,true);
         _window.visible = false;
         var_286 = IWindowContainer(find("room_info"));
         var_328 = IWindowContainer(find("room_details"));
         var_664 = IWindowContainer(find("public_space_details"));
         var_1973 = IWindowContainer(find("owner_name_cont"));
         var_1972 = IWindowContainer(find("rating_cont"));
         var_1230 = IWindowContainer(find("room_buttons"));
         var_692 = ITextWindow(find("room_name"));
         var_998 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_821 = ITextWindow(find("room_desc"));
         var_1225 = ITextWindow(find("public_space_desc"));
         var_996 = ITextWindow(find("owner_caption"));
         var_824 = ITextWindow(find("rating_caption"));
         var_1971 = ITextWindow(find("rate_caption"));
         var_1468 = ITextWindow(find("rating_txt"));
         var_249 = IWindowContainer(find("event_info"));
         var_823 = IWindowContainer(find("event_details"));
         var_1471 = IWindowContainer(find("event_buttons"));
         var_1808 = ITextWindow(find("event_name"));
         var_663 = ITextWindow(find("event_desc"));
         var_1226 = IContainerButtonWindow(find("add_favourite_button"));
         var_1227 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1224 = IContainerButtonWindow(find("make_home_button"));
         var_1229 = IContainerButtonWindow(find("unmake_home_button"));
         var_1469 = IButtonWindow(find("room_settings_button"));
         var_1470 = IButtonWindow(find("create_event_button"));
         var_1467 = IButtonWindow(find("edit_event_button"));
         var_822 = IWindowContainer(find("embed_info"));
         var_1228 = ITextWindow(find("embed_info_txt"));
         var_997 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1226,onAddFavouriteClick);
         Util.setProcDirectly(var_1227,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1469,onRoomSettingsClick);
         Util.setProcDirectly(var_1224,onMakeHomeClick);
         Util.setProcDirectly(var_1229,onUnmakeHomeClick);
         Util.setProcDirectly(var_1470,onEventSettingsClick);
         Util.setProcDirectly(var_1467,onEventSettingsClick);
         Util.setProcDirectly(var_997,onEmbedSrcClick);
         _navigator.refreshButton(var_1226,"favourite",true,null,0);
         _navigator.refreshButton(var_1227,"favourite",true,null,0);
         _navigator.refreshButton(var_1224,"home",true,null,0);
         _navigator.refreshButton(var_1229,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_286,onHover);
         Util.setProcDirectly(var_249,onHover);
         var_996.width = var_996.textWidth;
         Util.moveChildrenToRow(var_1973,["owner_caption","owner_name"],var_996.x,var_996.y,3);
         var_824.width = var_824.textWidth;
         Util.moveChildrenToRow(var_1972,["rating_caption","rating_txt"],var_824.x,var_824.y,3);
         var_1228.height = NaN;
         Util.moveChildrenToColumn(var_822,["embed_info_txt","embed_src_txt"],var_1228.y,2);
         var_822.height = Util.getLowestPoint(var_822) + 5;
         var_2292 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1808.text = param1.eventName;
         var_663.text = param1.eventDescription;
         var_925.refreshTags(var_823,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_663.visible = false;
         if(param1.eventDescription != "")
         {
            var_663.height = NaN;
            var_663.y = Util.getLowestPoint(var_823) + 2;
            var_663.visible = true;
         }
         var_823.visible = true;
         var_823.height = Util.getLowestPoint(var_823);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_883,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
