package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1561:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1478:String = "ROE_MOUSE_ENTER";
      
      public static const const_443:String = "ROE_MOUSE_MOVE";
      
      public static const const_1527:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_173:String = "ROE_MOUSE_CLICK";
      
      public static const const_445:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1927:Boolean;
      
      private var var_1931:Boolean;
      
      private var var_1926:Boolean;
      
      private var var_1929:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1926 = param4;
         var_1929 = param5;
         var_1927 = param6;
         var_1931 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1931;
      }
      
      public function get altKey() : Boolean
      {
         return var_1926;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1929;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1927;
      }
   }
}
