package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1601:int;
      
      private var var_1890:String;
      
      private var var_1892:int;
      
      private var var_1889:int;
      
      private var var_622:Boolean;
      
      private var var_1747:Boolean;
      
      private var var_387:int;
      
      private var var_1068:String;
      
      private var var_1748:int;
      
      private var var_1075:int;
      
      private var _ownerName:String;
      
      private var var_692:String;
      
      private var var_1893:int;
      
      private var var_1888:RoomThumbnailData;
      
      private var var_1891:Boolean;
      
      private var var_589:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_589 = new Array();
         super();
         var_387 = param1.readInteger();
         var_622 = param1.readBoolean();
         var_692 = param1.readString();
         _ownerName = param1.readString();
         var_1748 = param1.readInteger();
         var_1601 = param1.readInteger();
         var_1893 = param1.readInteger();
         var_1068 = param1.readString();
         var_1892 = param1.readInteger();
         var_1891 = param1.readBoolean();
         var_1889 = param1.readInteger();
         var_1075 = param1.readInteger();
         var_1890 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_589.push(_loc4_);
            _loc3_++;
         }
         var_1888 = new RoomThumbnailData(param1);
         var_1747 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1893;
      }
      
      public function get roomName() : String
      {
         return var_692;
      }
      
      public function get userCount() : int
      {
         return var_1601;
      }
      
      public function get score() : int
      {
         return var_1889;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1890;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1891;
      }
      
      public function get tags() : Array
      {
         return var_589;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1747;
      }
      
      public function get event() : Boolean
      {
         return var_622;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_589 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1075;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1892;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1888;
      }
      
      public function get doorMode() : int
      {
         return var_1748;
      }
      
      public function get flatId() : int
      {
         return var_387;
      }
      
      public function get description() : String
      {
         return var_1068;
      }
   }
}
