package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1650:Number = 0;
      
      private var var_1649:Number = 0;
      
      private var var_1652:Number = 0;
      
      private var var_1651:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1649 = param1;
         var_1652 = param2;
         var_1650 = param3;
         var_1651 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1649;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1650;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1652;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1651;
      }
   }
}
