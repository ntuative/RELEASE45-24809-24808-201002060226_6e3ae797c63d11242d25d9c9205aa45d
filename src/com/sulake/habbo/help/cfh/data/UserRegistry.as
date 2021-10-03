package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1089:int = 80;
       
      
      private var var_482:Map;
      
      private var var_692:String = "";
      
      private var var_1281:Array;
      
      public function UserRegistry()
      {
         var_482 = new Map();
         var_1281 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_482.getValue(var_1281.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_692;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_482.getValue(param1) != null)
         {
            var_482.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_692);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_692 == "")
         {
            var_1281.push(param1);
         }
         var_482.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_482;
      }
      
      public function method_8() : void
      {
         var_692 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_482.length > const_1089)
         {
            _loc1_ = var_482.getKey(0);
            var_482.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_692 = param1;
         if(var_692 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
