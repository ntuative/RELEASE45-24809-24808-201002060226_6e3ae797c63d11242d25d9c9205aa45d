package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1545:String;
      
      private var var_888:String;
      
      private var var_1543:String;
      
      private var var_1544:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1544 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1545 = _loc5_[0];
         var_1543 = _loc5_[1];
         _name = param2;
         var_888 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1545;
      }
      
      public function get languageCode() : String
      {
         return var_1544;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_888;
      }
      
      public function get encoding() : String
      {
         return var_1543;
      }
      
      public function get id() : String
      {
         return var_1544 + "_" + var_1545 + "." + var_1543;
      }
   }
}
