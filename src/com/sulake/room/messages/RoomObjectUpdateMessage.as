package com.sulake.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectUpdateMessage
   {
       
      
      protected var var_65:IVector3d;
      
      protected var var_224:IVector3d;
      
      public function RoomObjectUpdateMessage(param1:IVector3d, param2:IVector3d)
      {
         super();
         var_65 = param1;
         var_224 = param2;
      }
      
      public function get loc() : IVector3d
      {
         return var_65;
      }
      
      public function get dir() : IVector3d
      {
         return var_224;
      }
   }
}
