package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1011:int = 31;
      
      private static const const_1010:int = 32;
      
      private static const const_722:int = 10;
      
      private static const const_466:int = 20;
       
      
      private var var_552:Boolean = false;
      
      private var var_198:Array;
      
      public function FurnitureHabboWheelVisualization()
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
            var_198.push(const_1011);
            var_198.push(const_1010);
            return;
         }
         if(param1 > 0 && param1 <= const_722)
         {
            if(var_552)
            {
               var_552 = false;
               var_198 = new Array();
               var_198.push(const_722 + param1);
               var_198.push(const_466 + param1);
               var_198.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
