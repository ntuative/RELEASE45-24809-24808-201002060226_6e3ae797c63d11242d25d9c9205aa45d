package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1091:int = 1;
      
      private static const const_1010:int = 3;
      
      private static const const_1092:int = 2;
      
      private static const const_1090:int = 15;
       
      
      private var var_854:int;
      
      private var var_198:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_198 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1092)
         {
            var_198 = new Array();
            var_198.push(const_1091);
            var_854 = const_1090;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_854 > 0)
         {
            --var_854;
         }
         if(var_854 == 0)
         {
            if(false)
            {
               super.setAnimation(var_198.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
