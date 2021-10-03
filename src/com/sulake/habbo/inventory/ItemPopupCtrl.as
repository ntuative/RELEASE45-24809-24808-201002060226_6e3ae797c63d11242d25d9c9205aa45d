package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1078:int = 100;
      
      private static const const_1077:int = 200;
      
      private static const const_1080:int = 180;
      
      public static const const_841:int = 1;
      
      public static const const_463:int = 2;
      
      private static const const_1079:int = 250;
      
      private static const const_752:int = 5;
       
      
      private var var_564:BitmapData;
      
      private var var_290:Timer;
      
      private var var_6:IWindowContainer;
      
      private var var_676:BitmapData;
      
      private var var_289:Timer;
      
      private var var_64:IWindowContainer;
      
      private var var_1487:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_289 = new Timer(const_1079,1);
         var_290 = new Timer(const_1078,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_64 = param1;
         var_64.visible = false;
         _assets = param2;
         var_289.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_290.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_676 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_564 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_64.visible = false;
         var_290.reset();
         var_289.reset();
         if(var_6 != null)
         {
            var_6.removeChild(var_64);
         }
      }
      
      public function hideDelayed() : void
      {
         var_290.reset();
         var_289.reset();
         var_290.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_289 != null)
         {
            var_289.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_289.stop();
            var_289 = null;
         }
         if(var_290 != null)
         {
            var_290.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_290.stop();
            var_290 = null;
         }
         _assets = null;
         var_64 = null;
         var_6 = null;
         var_564 = null;
         var_676 = null;
      }
      
      public function showDelayed() : void
      {
         var_290.reset();
         var_289.reset();
         var_289.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_64 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_6 != null)
         {
            var_6.removeChild(var_64);
         }
         var_6 = param1;
         var_1487 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_64.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_64.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1080,param3.width),Math.min(const_1077,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_64.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_64 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_64.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_841:
               _loc2_.bitmap = var_676.clone();
               _loc2_.width = var_676.width;
               _loc2_.height = var_676.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_463:
               _loc2_.bitmap = var_564.clone();
               _loc2_.width = var_564.width;
               _loc2_.height = var_564.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_290.reset();
         var_289.reset();
         if(var_6 == null)
         {
            return;
         }
         var_64.visible = true;
         var_6.addChild(var_64);
         refreshArrow(var_1487);
         switch(var_1487)
         {
            case const_841:
               var_64.x = 0 - const_752;
               break;
            case const_463:
               var_64.x = var_6.width + const_752;
         }
         var_64.y = (0 - 0) / 2;
      }
   }
}
