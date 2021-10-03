package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_449:ToolbarIconGroup;
      
      private var var_978:Boolean = false;
      
      private var var_1884:String;
      
      private var var_718:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_979:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_30:String = "-1";
      
      private var var_91:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_657:String;
      
      private var var_1886:int;
      
      private var var_656:Timer;
      
      private var var_1445:Array;
      
      private var var_977:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2290:Array;
      
      private var var_244:ToolbarBarMenuAnimator;
      
      private var var_383:ToolbarIconAnimator;
      
      private var var_549:Array;
      
      private var var_795:Array;
      
      private var var_794:String = "-1";
      
      private var var_2346:Boolean = true;
      
      private var var_980:Array;
      
      private var var_1187:Timer;
      
      private var var_1885:int;
      
      private var var_79:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_549 = new Array();
         var_795 = new Array();
         var_2290 = new Array();
         var_977 = new ToolbarIconBouncer(0.8,1);
         super();
         var_449 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_657 = param4;
         _events = param5;
         var_244 = param6;
         var_1187 = new Timer(40,40);
         var_1187.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_91 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_456,HabboWindowStyle.const_23,HabboWindowParam.const_22,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_91.background = true;
         var_91.alphaTreshold = 0;
         var_91.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_23,HabboWindowParam.const_23,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_91.addChild(_window);
         _window.addEventListener(WindowEvent.const_26,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1445[var_980.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_1885;
      }
      
      public function get iconId() : String
      {
         return var_657;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_718 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_30 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_91 == null || _window == null)
         {
            return;
         }
         var_91.width = _window.width;
         var_91.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_79 = (0 - 0) / 2;
            _y = var_718 + (0 - 0) / 2;
         }
         else
         {
            var_79 = var_718 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_91.x = var_79;
         var_91.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_91 != null)
         {
            var_91.dispose();
            var_91 = null;
         }
         var_549 = null;
         var_795 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_244 = null;
         var_383 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_549.indexOf(param1) < 0)
         {
            var_549.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_795.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_978)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_244)
               {
                  var_244.repositionWindow(var_657,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_40);
                  _loc4_.iconId = var_657;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_979;
                  }
               }
               break;
            case WindowMouseEvent.const_11:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_794;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_549.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_795[var_549.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_978 = param1;
         if(var_91 != null)
         {
            var_91.visible = var_978;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_91 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_91.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_91.toolTipCaption = "${toolbar.icon.tooltip." + var_1884.toLowerCase() + "}";
         }
         var_91.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_244 != null)
         {
            var_244.animateWindowIn(this,param1,param2,var_657,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_383 != null && _window != null)
         {
            var_383.update(_window);
            if(var_383.hasNextState())
            {
               state = var_383.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1445 = new Array();
         var_980 = new Array();
         var_1884 = param1.@id;
         var_1885 = int(param1.@window_offset_from_icon);
         var_1886 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_979 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_794 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_980.push(_loc5_.id);
               var_1445.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_979 == "-1")
                  {
                     var_979 = _loc5_.id;
                  }
                  if(var_794 == "-1")
                  {
                     var_794 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_30 = var_794;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_244 != null)
         {
            var_244.hideWindow(param1,param2,var_657,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_244 != null)
         {
            var_244.positionWindow(this,param1,param2,var_657,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_244 != null)
         {
            var_244.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_978;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_977 != null && _window != null)
         {
            var_977.update();
            _window.y = var_977.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_656 != null)
         {
            var_656.stop();
            var_656 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_978)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_383 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_79,_y,_bitmapData);
            if(false)
            {
               var_656 = new Timer(_loc1_.timer);
               var_656.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_656.start();
            }
            if(_loc1_.bounce)
            {
               var_977.reset(-7);
               var_1187.reset();
               var_1187.start();
            }
         }
         else
         {
            var_383 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1886 + var_449.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_30);
      }
      
      public function get window() : IWindow
      {
         return var_91;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_795[var_549.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_449;
      }
   }
}
