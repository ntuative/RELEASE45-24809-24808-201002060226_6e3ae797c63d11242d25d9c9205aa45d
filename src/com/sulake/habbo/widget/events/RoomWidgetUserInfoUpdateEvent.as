package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_212:String = "RWUIUE_PEER";
      
      public static const const_209:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1279:String = "BOT";
      
      public static const const_847:int = 2;
      
      public static const const_1209:int = 0;
      
      public static const const_959:int = 3;
       
      
      private var var_1157:String = "";
      
      private var var_2098:Boolean = false;
      
      private var var_1898:int = 0;
      
      private var var_1656:int = 0;
      
      private var var_2102:Boolean = false;
      
      private var var_1156:String = "";
      
      private var var_2100:Boolean = false;
      
      private var var_851:int = 0;
      
      private var var_2097:Boolean = true;
      
      private var var_896:int = 0;
      
      private var var_2095:Boolean = false;
      
      private var var_1269:Boolean = false;
      
      private var var_2099:Boolean = false;
      
      private var var_1655:int = 0;
      
      private var var_2094:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_231:Array;
      
      private var var_1266:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1896:int = 0;
      
      private var var_2096:Boolean = false;
      
      private var var_2101:int = 0;
      
      private var var_1654:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_231 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1656;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1656 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2098;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2097;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2097 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2100 = param1;
      }
      
      public function get motto() : String
      {
         return var_1157;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2095 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1269;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1157 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2096;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1654;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1269 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2094;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1655 = param1;
      }
      
      public function get badges() : Array
      {
         return var_231;
      }
      
      public function get amIController() : Boolean
      {
         return var_2102;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2102 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2096 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2101 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1654 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1156 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2100;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2095;
      }
      
      public function get carryItem() : int
      {
         return var_1655;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1266;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1266 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_851 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2101;
      }
      
      public function get realName() : String
      {
         return var_1156;
      }
      
      public function set webID(param1:int) : void
      {
         var_1896 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_231 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2099 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2094 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_851;
      }
      
      public function get webID() : int
      {
         return var_1896;
      }
      
      public function set groupId(param1:int) : void
      {
         var_896 = param1;
      }
      
      public function get xp() : int
      {
         return var_1898;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2098 = param1;
      }
      
      public function get groupId() : int
      {
         return var_896;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2099;
      }
      
      public function set xp(param1:int) : void
      {
         var_1898 = param1;
      }
   }
}
