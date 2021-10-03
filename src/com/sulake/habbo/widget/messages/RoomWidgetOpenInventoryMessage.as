package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_858:String = "inventory_badges";
      
      public static const const_1120:String = "inventory_clothes";
      
      public static const const_1289:String = "inventory_furniture";
      
      public static const const_711:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_974:String = "inventory_effects";
       
      
      private var var_2196:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_711);
         var_2196 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2196;
      }
   }
}
