package com.sulake.habbo.notifications
{
   public class HabboNotificationItem
   {
       
      
      private var var_73:HabboNotificationItemStyle;
      
      private var var_17:String;
      
      private var var_27:HabboNotifications;
      
      public function HabboNotificationItem(param1:String, param2:HabboNotificationItemStyle, param3:HabboNotifications)
      {
         super();
         var_17 = param1;
         var_73 = param2;
         var_27 = param3;
      }
      
      public function ExecuteUiLinks() : void
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_73.componentLinks;
         for each(_loc2_ in _loc1_)
         {
            if(var_27 != null)
            {
               var_27.onExecuteLink(_loc2_);
            }
         }
      }
      
      public function get style() : HabboNotificationItemStyle
      {
         return var_73;
      }
      
      public function get content() : String
      {
         return var_17;
      }
   }
}
