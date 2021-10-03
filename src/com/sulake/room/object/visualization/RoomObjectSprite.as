package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1165:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1845:Boolean = false;
      
      private var var_1847:String = "normal";
      
      private var var_1211:String = "";
      
      private var _instanceId:int = 0;
      
      private var var_307:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1846:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1014:Boolean = false;
      
      private var var_1015:Boolean = false;
      
      private var var_1843:Boolean = false;
      
      private var _offset:Point;
      
      private var var_1844:Boolean = true;
      
      private var _width:int = 0;
      
      private var var_1013:Number = 0;
      
      private var var_1597:String = "";
      
      private var var_847:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
         _instanceId = var_1165++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_1015 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1843 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_847 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1847 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1597 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1211 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1845;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get uid() : int
      {
         return _instanceId;
      }
      
      public function get relativeDepth() : Number
      {
         return var_1013;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1846;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1844 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_307;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1845 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_1014;
      }
      
      public function get flipV() : Boolean
      {
         return var_1015;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1843;
      }
      
      public function get blendMode() : String
      {
         return var_1847;
      }
      
      public function get tag() : String
      {
         return var_1597;
      }
      
      public function get assetName() : String
      {
         return var_1211;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_1013 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1844;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1846 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_847 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_307 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_847;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_1014 = param1;
         ++_updateID;
      }
   }
}
