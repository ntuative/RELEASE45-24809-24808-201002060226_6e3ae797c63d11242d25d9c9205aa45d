package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1768:Number = 1;
      
      private var var_183:Number = 1;
      
      private var var_1882:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1882 = param1;
         var_183 = param2;
         var_1768 = param3;
      }
      
      public function get scale() : Number
      {
         return var_183;
      }
      
      public function get heightScale() : Number
      {
         return var_1768;
      }
   }
}
