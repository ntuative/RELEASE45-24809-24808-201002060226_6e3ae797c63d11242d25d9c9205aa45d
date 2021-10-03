package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1251:int;
      
      private var var_1521:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1251 = param1;
         var_1521 = param2;
         Logger.log("READ NODE: " + var_1251 + ", " + var_1521);
      }
      
      public function get nodeName() : String
      {
         return var_1521;
      }
      
      public function get nodeId() : int
      {
         return var_1251;
      }
   }
}
