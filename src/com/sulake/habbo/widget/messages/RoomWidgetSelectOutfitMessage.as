package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_938:String = "select_outfit";
       
      
      private var var_1986:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_938);
         var_1986 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1986;
      }
   }
}
