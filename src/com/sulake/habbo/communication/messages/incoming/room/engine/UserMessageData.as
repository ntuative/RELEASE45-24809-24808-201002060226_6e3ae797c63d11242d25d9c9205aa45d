package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1282:String = "F";
      
      public static const const_797:String = "M";
       
      
      private var var_79:Number = 0;
      
      private var var_560:String = "";
      
      private var var_2107:int = 0;
      
      private var var_1897:String = "";
      
      private var var_1894:int = 0;
      
      private var var_1898:int = 0;
      
      private var var_1895:String = "";
      
      private var var_1136:String = "";
      
      private var _id:int = 0;
      
      private var var_191:Boolean = false;
      
      private var var_224:int = 0;
      
      private var var_2106:String = "";
      
      private var _name:String = "";
      
      private var var_1896:int = 0;
      
      private var _y:Number = 0;
      
      private var var_78:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_78;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_224;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_191)
         {
            var_224 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_191)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2107;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_191)
         {
            var_1894 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2106;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_191)
         {
            var_1895 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_191)
         {
            var_2106 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_191)
         {
            var_1898 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_191)
         {
            var_560 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_191)
         {
            var_2107 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_191)
         {
            var_1136 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1894;
      }
      
      public function get groupID() : String
      {
         return var_1895;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_191)
         {
            var_1896 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_191)
         {
            var_1897 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_191 = true;
      }
      
      public function get sex() : String
      {
         return var_1136;
      }
      
      public function get figure() : String
      {
         return var_560;
      }
      
      public function get webID() : int
      {
         return var_1896;
      }
      
      public function get custom() : String
      {
         return var_1897;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_191)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_191)
         {
            var_78 = param1;
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
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1898;
      }
   }
}
