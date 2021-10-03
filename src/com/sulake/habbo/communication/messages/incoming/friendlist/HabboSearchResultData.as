package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2261:Boolean;
      
      private var var_2260:int;
      
      private var var_2262:Boolean;
      
      private var var_1409:String;
      
      private var var_1156:String;
      
      private var var_1916:int;
      
      private var var_1779:String;
      
      private var var_2263:String;
      
      private var var_1780:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1916 = param1.readInteger();
         this.var_1409 = param1.readString();
         this.var_1779 = param1.readString();
         this.var_2261 = param1.readBoolean();
         this.var_2262 = param1.readBoolean();
         param1.readString();
         this.var_2260 = param1.readInteger();
         this.var_1780 = param1.readString();
         this.var_2263 = param1.readString();
         this.var_1156 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1156;
      }
      
      public function get avatarName() : String
      {
         return this.var_1409;
      }
      
      public function get avatarId() : int
      {
         return this.var_1916;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2261;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2263;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1780;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2262;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1779;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2260;
      }
   }
}
