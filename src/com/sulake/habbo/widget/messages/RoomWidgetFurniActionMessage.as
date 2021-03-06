package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_234:String = "RWFAM_MOVE";
      
      public static const const_484:String = "RWFUAM_ROTATE";
      
      public static const const_562:String = "RWFAM_PICKUP";
       
      
      private var var_1564:int = 0;
      
      private var var_2003:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1564 = param2;
         var_2003 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1564;
      }
      
      public function get furniCategory() : int
      {
         return var_2003;
      }
   }
}
