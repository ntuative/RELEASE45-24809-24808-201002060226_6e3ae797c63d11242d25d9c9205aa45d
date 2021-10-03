package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1550:int;
      
      private var var_1549:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1550;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1550 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1550 = this.var_1550;
         _loc1_.var_1549 = this.var_1549;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1549 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1549;
      }
   }
}
