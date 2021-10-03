package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_560:String;
      
      private var var_2265:String;
      
      private var var_2264:int;
      
      private var var_2266:int;
      
      private var var_1136:String;
      
      private var var_1156:String;
      
      private var _name:String;
      
      private var var_479:int;
      
      private var var_851:int;
      
      private var var_2268:int;
      
      private var _respectTotal:int;
      
      private var var_2267:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2266;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1156;
      }
      
      public function get customData() : String
      {
         return this.var_2265;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_479;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2264;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2267;
      }
      
      public function get figure() : String
      {
         return this.var_560;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_1136;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_560 = param1.readString();
         this.var_1136 = param1.readString();
         this.var_2265 = param1.readString();
         this.var_1156 = param1.readString();
         this.var_2268 = param1.readInteger();
         this.var_2267 = param1.readString();
         this.var_2264 = param1.readInteger();
         this.var_2266 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_851 = param1.readInteger();
         this.var_479 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2268;
      }
      
      public function get respectLeft() : int
      {
         return this.var_851;
      }
   }
}
