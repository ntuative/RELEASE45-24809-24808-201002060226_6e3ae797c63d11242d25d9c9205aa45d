package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1918:int;
      
      private var var_1922:int = 0;
      
      private var var_1920:String;
      
      private var var_1921:int;
      
      private var var_1919:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1918 = param1;
         var_1921 = param2;
         var_1919 = param3;
         var_1920 = param4;
      }
      
      public function get length() : int
      {
         return var_1921;
      }
      
      public function get name() : String
      {
         return var_1919;
      }
      
      public function get creator() : String
      {
         return var_1920;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1922;
      }
      
      public function get id() : int
      {
         return var_1918;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1922 = param1;
      }
   }
}
