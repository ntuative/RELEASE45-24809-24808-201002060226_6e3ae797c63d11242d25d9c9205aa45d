package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1115:int = 4;
      
      public static const const_556:int = 3;
      
      public static const const_653:int = 2;
      
      public static const const_925:int = 1;
       
      
      private var var_1599:String;
      
      private var _disposed:Boolean;
      
      private var var_1601:int;
      
      private var var_1602:Boolean;
      
      private var var_717:String;
      
      private var var_722:PublicRoomData;
      
      private var var_1598:int;
      
      private var _index:int;
      
      private var var_1600:String;
      
      private var _type:int;
      
      private var var_1597:String;
      
      private var var_723:GuestRoomData;
      
      private var var_1603:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1599 = param1.readString();
         var_1603 = param1.readString();
         var_1602 = param1.readInteger() == 1;
         var_1600 = param1.readString();
         var_717 = param1.readString();
         var_1598 = param1.readInteger();
         var_1601 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_925)
         {
            var_1597 = param1.readString();
         }
         else if(_type == const_556)
         {
            var_722 = new PublicRoomData(param1);
         }
         else if(_type == const_653)
         {
            var_723 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1598;
      }
      
      public function get popupCaption() : String
      {
         return var_1599;
      }
      
      public function get userCount() : int
      {
         return var_1601;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1602;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_925)
         {
            return 0;
         }
         if(this.type == const_653)
         {
            return this.var_723.maxUserCount;
         }
         if(this.type == const_556)
         {
            return this.var_722.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1603;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_723 != null)
         {
            this.var_723.dispose();
            this.var_723 = null;
         }
         if(this.var_722 != null)
         {
            this.var_722.dispose();
            this.var_722 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_723;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1600;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_722;
      }
      
      public function get picRef() : String
      {
         return var_717;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1597;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
