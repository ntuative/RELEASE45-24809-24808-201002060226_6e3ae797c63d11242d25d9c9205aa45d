package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_329:Number = 0.5;
      
      private static const const_751:int = 3;
      
      private static const const_1076:Number = 1;
       
      
      private var var_2035:Boolean = false;
      
      private var var_2031:Boolean = false;
      
      private var var_1011:int = 0;
      
      private var var_253:Vector3d = null;
      
      private var var_2032:int = 0;
      
      private var var_2038:int = 0;
      
      private var var_2030:Boolean = false;
      
      private var var_2033:int = -2;
      
      private var var_2036:Boolean = false;
      
      private var var_2037:int = 0;
      
      private var var_2034:int = -1;
      
      private var var_397:Vector3d = null;
      
      private var var_2029:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2032;
      }
      
      public function get targetId() : int
      {
         return var_2034;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2037 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2032 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2035 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2034 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2031 = param1;
      }
      
      public function dispose() : void
      {
         var_397 = null;
         var_253 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_397 == null)
         {
            var_397 = new Vector3d();
         }
         var_397.assign(param1);
         var_1011 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2033;
      }
      
      public function get screenHt() : int
      {
         return var_2029;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2038 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_253;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2029 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2037;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2035;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2031;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_397 != null && var_253 != null)
         {
            ++var_1011;
            _loc2_ = Vector3d.dif(var_397,var_253);
            if(_loc2_.length <= const_329)
            {
               var_253 = var_397;
               var_397 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_329 * (const_751 + 1))
               {
                  _loc2_.mul(const_329);
               }
               else if(var_1011 <= const_751)
               {
                  _loc2_.mul(const_329);
               }
               else
               {
                  _loc2_.mul(const_1076);
               }
               var_253 = Vector3d.sum(var_253,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2030 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2038;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2036 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2033 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_253 != null)
         {
            return;
         }
         var_253 = new Vector3d();
         var_253.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2030;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2036;
      }
   }
}
