package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1010:int = -1;
      
      private static const const_722:int = 20;
      
      private static const const_466:int = 9;
       
      
      private var var_552:Boolean = false;
      
      private var var_198:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_198 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_552 = true;
            var_198 = new Array();
            var_198.push(const_1010);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_552)
            {
               var_552 = false;
               var_198 = new Array();
               var_198.push(const_722);
               var_198.push(const_466 + param1);
               var_198.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
