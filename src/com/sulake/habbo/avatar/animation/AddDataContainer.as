package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1506:String;
      
      private var var_1396:String;
      
      private var var_1000:String;
      
      private var var_360:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1506 = String(param1.@align);
         var_1000 = String(param1.@base);
         var_1396 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_360 = Number(_loc2_);
            if(var_360 > 1)
            {
               var_360 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1506;
      }
      
      public function get ink() : String
      {
         return var_1396;
      }
      
      public function get base() : String
      {
         return var_1000;
      }
      
      public function get isBlended() : Boolean
      {
         return var_360 != 1;
      }
      
      public function get blend() : Number
      {
         return var_360;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
