package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_1112:int;
      
      private var var_769:String;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_769 = param1.readString();
         this.var_1112 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_769;
      }
      
      public function get errorCode() : int
      {
         return this.var_1112;
      }
   }
}
