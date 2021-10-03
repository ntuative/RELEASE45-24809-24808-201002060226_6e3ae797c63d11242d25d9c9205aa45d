package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_638:IAssetLoader;
      
      private var var_1211:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1211 = param1;
         var_638 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_638;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_638 != null)
            {
               if(true)
               {
                  var_638.dispose();
                  var_638 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1211;
      }
   }
}
