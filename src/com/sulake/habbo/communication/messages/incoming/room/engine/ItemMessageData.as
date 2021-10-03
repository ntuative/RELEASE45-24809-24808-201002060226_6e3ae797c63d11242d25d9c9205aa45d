package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_78:Number = 0;
      
      private var _data:String = "";
      
      private var var_1388:int = 0;
      
      private var var_30:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2075:Boolean = false;
      
      private var var_2342:String = "";
      
      private var _id:int = 0;
      
      private var var_191:Boolean = false;
      
      private var var_224:String = "";
      
      private var var_2076:int = 0;
      
      private var var_2077:int = 0;
      
      private var var_1933:int = 0;
      
      private var var_1932:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2075 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_191)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2075;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_191)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_224;
      }
      
      public function get state() : int
      {
         return var_30;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_191)
         {
            var_1933 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_191)
         {
            var_2076 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_191)
         {
            var_2077 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_191)
         {
            var_224 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_191)
         {
            var_1932 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_191)
         {
            var_30 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1933;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_191)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2076;
      }
      
      public function get wallY() : Number
      {
         return var_2077;
      }
      
      public function get localY() : Number
      {
         return var_1932;
      }
      
      public function setReadOnly() : void
      {
         var_191 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_78;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_191)
         {
            var_78 = param1;
         }
      }
   }
}
