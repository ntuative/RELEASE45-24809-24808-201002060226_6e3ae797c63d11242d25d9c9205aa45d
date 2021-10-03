package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_400:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_498:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_662:String;
      
      private var var_138:int;
      
      private var var_176:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_138 = param2;
         var_176 = param3;
         var_662 = param4;
      }
      
      public function get objectId() : int
      {
         return var_138;
      }
      
      public function get text() : String
      {
         return var_176;
      }
      
      public function get colorHex() : String
      {
         return var_662;
      }
   }
}
