package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1536:int = 9;
      
      public static const const_1486:int = 4;
      
      public static const const_1473:int = 1;
      
      public static const const_1315:int = 10;
      
      public static const const_1560:int = 2;
      
      public static const const_1352:int = 7;
      
      public static const const_1166:int = 11;
      
      public static const const_1461:int = 3;
      
      public static const const_1200:int = 8;
      
      public static const const_1295:int = 5;
      
      public static const const_1569:int = 6;
      
      public static const const_1325:int = 12;
       
      
      private var var_1707:String;
      
      private var _roomId:int;
      
      private var var_1112:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1707;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1112 = param1.readInteger();
         var_1707 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1112;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
