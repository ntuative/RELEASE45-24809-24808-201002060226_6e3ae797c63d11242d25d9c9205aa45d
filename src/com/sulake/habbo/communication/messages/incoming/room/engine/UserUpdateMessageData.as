package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_78:Number = 0;
      
      private var var_224:int = 0;
      
      private var var_1873:int = 0;
      
      private var var_1871:Number = 0;
      
      private var var_1874:Number = 0;
      
      private var var_1876:Number = 0;
      
      private var var_1875:Number = 0;
      
      private var var_1872:Boolean = false;
      
      private var var_79:Number = 0;
      
      private var _id:int = 0;
      
      private var var_184:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_184 = [];
         super();
         _id = param1;
         var_79 = param2;
         _y = param3;
         var_78 = param4;
         var_1875 = param5;
         var_224 = param6;
         var_1873 = param7;
         var_1871 = param8;
         var_1874 = param9;
         var_1876 = param10;
         var_1872 = param11;
         var_184 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_78;
      }
      
      public function get dir() : int
      {
         return var_224;
      }
      
      public function get localZ() : Number
      {
         return var_1875;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1872;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1873;
      }
      
      public function get targetX() : Number
      {
         return var_1871;
      }
      
      public function get targetY() : Number
      {
         return var_1874;
      }
      
      public function get targetZ() : Number
      {
         return var_1876;
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get actions() : Array
      {
         return var_184.slice();
      }
   }
}
