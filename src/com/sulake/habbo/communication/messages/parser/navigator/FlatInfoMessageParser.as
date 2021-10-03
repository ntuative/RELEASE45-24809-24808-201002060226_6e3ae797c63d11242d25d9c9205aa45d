package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_199:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_199 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_199;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_199 = new RoomSettingsFlatInfo();
         var_199.allowFurniMoving = param1.readInteger() == 1;
         var_199.doorMode = param1.readInteger();
         var_199.id = param1.readInteger();
         var_199.ownerName = param1.readString();
         var_199.type = param1.readString();
         var_199.name = param1.readString();
         var_199.description = param1.readString();
         var_199.showOwnerName = param1.readInteger() == 1;
         var_199.allowTrading = param1.readInteger() == 1;
         var_199.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
