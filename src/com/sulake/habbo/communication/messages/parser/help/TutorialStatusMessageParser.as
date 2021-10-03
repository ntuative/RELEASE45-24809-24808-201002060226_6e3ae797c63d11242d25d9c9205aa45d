package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1038:Boolean;
      
      private var var_1039:Boolean;
      
      private var var_1040:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1038;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1039;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1040 = param1.readBoolean();
         var_1039 = param1.readBoolean();
         var_1038 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1040;
      }
      
      public function flush() : Boolean
      {
         var_1040 = false;
         var_1039 = false;
         var_1038 = false;
         return true;
      }
   }
}
