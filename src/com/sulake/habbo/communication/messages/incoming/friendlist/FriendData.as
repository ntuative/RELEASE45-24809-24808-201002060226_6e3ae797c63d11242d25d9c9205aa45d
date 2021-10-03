package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_560:String;
      
      private var var_1158:String;
      
      private var var_1157:String;
      
      private var var_1075:int;
      
      private var _gender:int;
      
      private var var_1156:String;
      
      private var _name:String;
      
      private var var_1127:Boolean;
      
      private var var_627:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_627 = param1.readBoolean();
         this.var_1127 = param1.readBoolean();
         this.var_560 = param1.readString();
         this.var_1075 = param1.readInteger();
         this.var_1157 = param1.readString();
         this.var_1158 = param1.readString();
         this.var_1156 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1156;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1157;
      }
      
      public function get categoryId() : int
      {
         return var_1075;
      }
      
      public function get online() : Boolean
      {
         return var_627;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1127;
      }
      
      public function get lastAccess() : String
      {
         return var_1158;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_560;
      }
   }
}
