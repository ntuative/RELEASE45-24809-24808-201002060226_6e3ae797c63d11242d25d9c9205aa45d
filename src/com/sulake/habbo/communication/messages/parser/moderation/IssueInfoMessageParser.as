package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.getTimer;
   
   public class IssueInfoMessageParser implements IMessageParser
   {
       
      
      private var var_50:IssueMessageData;
      
      public function IssueInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_50 = new IssueMessageData();
         var_50.issueId = param1.readInteger();
         var_50.state = param1.readInteger();
         var_50.categoryId = param1.readInteger();
         var_50.reportedCategoryId = param1.readInteger();
         var_50.timeStamp = getTimer() - param1.readInteger();
         var_50.priority = param1.readInteger();
         var_50.reporterUserId = param1.readInteger();
         var_50.reporterUserName = param1.readString();
         var_50.reportedUserId = param1.readInteger();
         var_50.reportedUserName = param1.readString();
         var_50.pickerUserId = param1.readInteger();
         var_50.pickerUserName = param1.readString();
         var_50.message = param1.readString();
         var_50.chatRecordId = param1.readInteger();
         var_50.roomName = param1.readString();
         var_50.roomType = param1.readInteger();
         if(false)
         {
            var_50.roomResources = param1.readString();
            var_50.unitPort = param1.readInteger();
            var_50.worldId = param1.readInteger();
         }
         if(false)
         {
            var_50.flatType = param1.readString();
            var_50.flatId = param1.readInteger();
            var_50.flatOwnerName = param1.readString();
         }
         return true;
      }
      
      public function get issueData() : IssueMessageData
      {
         return var_50;
      }
      
      public function flush() : Boolean
      {
         var_50 = null;
         return true;
      }
   }
}
