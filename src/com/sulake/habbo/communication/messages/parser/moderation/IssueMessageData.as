package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_117:int = 1;
      
      public static const const_1358:int = 3;
      
      public static const const_399:int = 2;
       
      
      private var var_2167:int;
      
      private var var_2048:int;
      
      private var var_2169:int;
      
      private var var_1613:int;
      
      private var var_30:int;
      
      private var var_387:int;
      
      private var var_1258:int;
      
      private var var_1981:int;
      
      private var var_941:int;
      
      private var _roomResources:String;
      
      private var var_2172:int;
      
      private var var_2173:int;
      
      private var var_2168:String;
      
      private var var_1979:String;
      
      private var var_2171:int = 0;
      
      private var var_1128:String;
      
      private var _message:String;
      
      private var var_1834:int;
      
      private var var_2170:String;
      
      private var var_1075:int;
      
      private var var_692:String;
      
      private var var_2166:String;
      
      private var var_1417:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_941 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2171 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2173;
      }
      
      public function set roomName(param1:String) : void
      {
         var_692 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2172 = param1;
      }
      
      public function get state() : int
      {
         return var_30;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_692;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1613 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_30 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2048;
      }
      
      public function get priority() : int
      {
         return var_2167 + var_2171;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1981 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1979;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1417) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1075;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2173 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1258;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2168 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2172;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1613;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2166 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1128 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1981;
      }
      
      public function set priority(param1:int) : void
      {
         var_2167 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2048 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2168;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2169 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1979 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1834 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1128;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1258 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2169;
      }
      
      public function set flatId(param1:int) : void
      {
         var_387 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1075 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1417 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1834;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2170 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1417;
      }
      
      public function get reportedUserId() : int
      {
         return var_941;
      }
      
      public function get flatId() : int
      {
         return var_387;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2166;
      }
      
      public function get reporterUserName() : String
      {
         return var_2170;
      }
   }
}
