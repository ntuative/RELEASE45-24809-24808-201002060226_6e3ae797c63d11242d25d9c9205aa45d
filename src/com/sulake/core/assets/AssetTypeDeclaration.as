package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1810:Class;
      
      private var var_1812:Class;
      
      private var var_1811:String;
      
      private var var_1146:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1811 = param1;
         var_1812 = param2;
         var_1810 = param3;
         if(rest == null)
         {
            var_1146 = new Array();
         }
         else
         {
            var_1146 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1810;
      }
      
      public function get assetClass() : Class
      {
         return var_1812;
      }
      
      public function get mimeType() : String
      {
         return var_1811;
      }
      
      public function get fileTypes() : Array
      {
         return var_1146;
      }
   }
}
