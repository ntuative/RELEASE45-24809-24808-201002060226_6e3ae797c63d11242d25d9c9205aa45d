package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_792:LegacyWallGeometry = null;
      
      private var var_548:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_547:TileHeightMap = null;
      
      private var var_1882:String = null;
      
      private var _roomId:int = 0;
      
      private var var_793:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_792 = new LegacyWallGeometry();
         var_793 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_547 != null)
         {
            var_547.dispose();
         }
         var_547 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1882 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_792;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_793;
      }
      
      public function dispose() : void
      {
         if(var_547 != null)
         {
            var_547.dispose();
            var_547 = null;
         }
         if(var_792 != null)
         {
            var_792.dispose();
            var_792 = null;
         }
         if(var_793 != null)
         {
            var_793.dispose();
            var_793 = null;
         }
         if(var_548 != null)
         {
            var_548.dispose();
            var_548 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_547;
      }
      
      public function get worldType() : String
      {
         return var_1882;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_548 != null)
         {
            var_548.dispose();
         }
         var_548 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_548;
      }
   }
}
