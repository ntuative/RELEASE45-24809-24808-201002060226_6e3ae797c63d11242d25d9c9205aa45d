package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1011:int = 31;
      
      private static const const_1010:int = 32;
      
      private static const const_465:int = 30;
      
      private static const const_722:int = 20;
      
      private static const const_466:int = 10;
       
      
      private var var_552:Boolean = false;
      
      private var var_198:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_198 = new Array();
         super();
         super.setAnimation(const_465);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_552 = true;
            var_198 = new Array();
            var_198.push(const_1011);
            var_198.push(const_1010);
            return;
         }
         if(param1 > 0 && param1 <= const_466)
         {
            if(var_552)
            {
               var_552 = false;
               var_198 = new Array();
               if(_direction == 2)
               {
                  var_198.push(const_722 + 5 - param1);
                  var_198.push(const_466 + 5 - param1);
               }
               else
               {
                  var_198.push(const_722 + param1);
                  var_198.push(const_466 + param1);
               }
               var_198.push(const_465);
               return;
            }
            super.setAnimation(const_465);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
