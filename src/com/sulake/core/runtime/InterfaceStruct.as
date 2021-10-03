package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_371:uint;
      
      private var var_954:IUnknown;
      
      private var var_1140:String;
      
      private var var_953:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_953 = param1;
         var_1140 = getQualifiedClassName(var_953);
         var_954 = param2;
         var_371 = 0;
      }
      
      public function get iid() : IID
      {
         return var_953;
      }
      
      public function get disposed() : Boolean
      {
         return var_954 == null;
      }
      
      public function get references() : uint
      {
         return var_371;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_371) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_954;
      }
      
      public function get iis() : String
      {
         return var_1140;
      }
      
      public function reserve() : uint
      {
         return ++var_371;
      }
      
      public function dispose() : void
      {
         var_953 = null;
         var_1140 = null;
         var_954 = null;
         var_371 = 0;
      }
   }
}
