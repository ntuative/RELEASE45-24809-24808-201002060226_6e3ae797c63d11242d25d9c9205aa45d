package com.sulake.room.renderer.utils
{
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   
   public class SortableSprite
   {
       
      
      private var var_78:Number = 0;
      
      private var var_1954:IRoomObjectSprite = null;
      
      private var _name:String = "";
      
      private var var_79:int = 0;
      
      private var _y:int = 0;
      
      public function SortableSprite()
      {
         super();
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set y(param1:int) : void
      {
         _y = param1;
      }
      
      public function set z(param1:Number) : void
      {
         var_78 = param1;
      }
      
      public function get sprite() : IRoomObjectSprite
      {
         return var_1954;
      }
      
      public function get z() : Number
      {
         return var_78;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set x(param1:int) : void
      {
         var_79 = param1;
      }
      
      public function set sprite(param1:IRoomObjectSprite) : void
      {
         var_1954 = param1;
      }
      
      public function get x() : int
      {
         return var_79;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
   }
}
