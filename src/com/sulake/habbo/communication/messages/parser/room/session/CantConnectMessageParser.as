package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1539:int = 2;
      
      public static const const_313:int = 4;
      
      public static const const_1161:int = 1;
      
      public static const const_1274:int = 3;
       
      
      private var var_1035:int = 0;
      
      private var var_868:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1035;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1035 = param1.readInteger();
         if(var_1035 == 3)
         {
            var_868 = param1.readString();
         }
         else
         {
            var_868 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1035 = 0;
         var_868 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_868;
      }
   }
}
