package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_169:String;
      
      private var var_374:int;
      
      private var var_176:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_169 = param1;
         var_176 = param2;
         var_374 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_176.text = var_169.substring(0,param1) + "...";
         return var_176.textHeight > var_374;
      }
   }
}
