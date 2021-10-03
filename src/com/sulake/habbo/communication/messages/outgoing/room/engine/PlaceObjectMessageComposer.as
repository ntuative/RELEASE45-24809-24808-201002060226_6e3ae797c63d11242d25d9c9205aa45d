package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_138:int;
      
      private var var_224:int = 0;
      
      private var _roomId:int;
      
      private var var_79:int = 0;
      
      private var _y:int = 0;
      
      private var var_1860:int;
      
      private var var_1859:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_138 = param1;
         var_1860 = param2;
         var_1859 = param3;
         var_79 = param4;
         _y = param5;
         var_224 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_1860)
         {
            case RoomObjectCategoryEnum.const_14:
               return [var_138 + " " + var_79 + " " + _y + " " + var_224];
            case RoomObjectCategoryEnum.const_12:
               return [var_138 + " " + var_1859];
            default:
               return [];
         }
      }
   }
}
