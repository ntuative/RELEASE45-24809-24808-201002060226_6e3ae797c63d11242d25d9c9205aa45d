package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_649:int = 2;
      
      public static const const_993:int = 6;
      
      public static const const_716:int = 1;
      
      public static const const_627:int = 3;
      
      public static const const_872:int = 4;
      
      public static const const_663:int = 5;
       
      
      private var var_2123:String;
      
      private var var_958:int;
      
      private var var_1764:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_958 = param2;
         var_1764 = param3;
         var_2123 = param4;
      }
      
      public function get time() : String
      {
         return var_2123;
      }
      
      public function get senderId() : int
      {
         return var_958;
      }
      
      public function get messageText() : String
      {
         return var_1764;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
