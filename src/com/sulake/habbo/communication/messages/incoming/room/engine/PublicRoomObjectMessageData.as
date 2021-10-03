package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_1043:int = 0;
      
      private var var_78:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_191:Boolean = false;
      
      private var var_224:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_79:Number = 0;
      
      private var var_1044:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_191)
         {
            var_78 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_1043;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_224;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_191)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_191)
         {
            var_224 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_191)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_191 = true;
      }
      
      public function get z() : Number
      {
         return var_78;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_191)
         {
            var_1043 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_191)
         {
            var_1044 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_191)
         {
            var_79 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_79;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_191)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1044;
      }
   }
}
