package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1101:AssetTypeDeclaration;
      
      private var var_888:String;
      
      private var var_17:Object = null;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1101 = param1;
         var_888 = param2;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1101;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var_17 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         var_17 = param1.content as Object;
      }
      
      public function get content() : Object
      {
         return var_17;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_17 = null;
            var_1101 = null;
            var_888 = null;
         }
      }
      
      public function get url() : String
      {
         return var_888;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + var_17;
      }
   }
}
