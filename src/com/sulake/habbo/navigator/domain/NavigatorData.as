package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1411:int = 10;
       
      
      private var var_1502:NavigatorSettingsMessageParser;
      
      private var var_1273:int;
      
      private var var_2086:Boolean;
      
      private var var_2088:int;
      
      private var var_845:Dictionary;
      
      private var var_2298:int;
      
      private var var_2089:int;
      
      private var var_1916:int;
      
      private var var_306:Array;
      
      private var var_2085:int;
      
      private var var_575:PublicRoomShortData;
      
      private var var_405:RoomEventData;
      
      private var var_129:MsgWithRequestId;
      
      private var var_2068:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2087:Boolean;
      
      private var var_190:GuestRoomData;
      
      private var var_687:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_306 = new Array();
         var_845 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2088;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2087;
      }
      
      public function startLoading() : void
      {
         this.var_687 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2087 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_405 != null)
         {
            var_405.dispose();
         }
         var_405 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_129 != null && var_129 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_129 != null && var_129 as GuestRoomSearchResultData != null;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_687 = false;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_129 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_190;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_575 = null;
         var_190 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_575 = param1.publicSpace;
            var_405 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_405 != null)
         {
            var_405.dispose();
            var_405 = null;
         }
         if(var_575 != null)
         {
            var_575.dispose();
            var_575 = null;
         }
         if(var_190 != null)
         {
            var_190.dispose();
            var_190 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1502;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_687 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_306.length > param1)
         {
            return var_306[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2298 = param1.limit;
         this.var_1273 = param1.favouriteRoomIds.length;
         this.var_845 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_845[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_129 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_306;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_575;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1916 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2086;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_129 = param1;
         var_687 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_306.length)
         {
            if((var_306[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_190 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_687;
      }
      
      public function set categories(param1:Array) : void
      {
         var_306 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_2089;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2085;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1502 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_129 == null)
         {
            return;
         }
         var_129.dispose();
         var_129 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_405;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_845[param1] = !!param2 ? "yes" : null;
         var_1273 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_129 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1916;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_129 != null && var_129 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2086 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2089 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2068 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_190 != null)
         {
            var_190.dispose();
         }
         var_190 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_306)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_190 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1502.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1273 >= var_2298;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2085 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2068;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_190 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2088 = param1;
      }
   }
}
