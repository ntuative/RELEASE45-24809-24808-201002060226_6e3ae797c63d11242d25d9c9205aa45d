package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1967:int;
      
      private var var_1970:int;
      
      private var var_1966:Boolean;
      
      private var var_1968:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1969:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1970 = param1;
         var_1967 = param2;
         var_1968 = param3;
         var_1969 = param4;
         var_1966 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1970,var_1967,var_1968,var_1969,int(var_1966)];
      }
      
      public function dispose() : void
      {
      }
   }
}
