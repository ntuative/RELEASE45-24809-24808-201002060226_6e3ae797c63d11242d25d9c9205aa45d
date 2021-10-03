package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_184:String = "e";
      
      public static const const_57:String = "i";
      
      public static const const_56:String = "s";
       
      
      private var var_982:String;
      
      private var var_1190:String;
      
      private var var_1191:int;
      
      private var var_1965:int;
      
      private var var_981:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1190 = param1.readString();
         var_1965 = param1.readInteger();
         var_982 = param1.readString();
         var_981 = param1.readInteger();
         var_1191 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_981;
      }
      
      public function get productType() : String
      {
         return var_1190;
      }
      
      public function get expiration() : int
      {
         return var_1191;
      }
      
      public function get furniClassId() : int
      {
         return var_1965;
      }
      
      public function get extraParam() : String
      {
         return var_982;
      }
   }
}
