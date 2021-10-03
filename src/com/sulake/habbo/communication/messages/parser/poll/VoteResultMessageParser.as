package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1181:int;
      
      private var var_963:String;
      
      private var var_615:Array;
      
      private var var_930:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_615.slice();
      }
      
      public function flush() : Boolean
      {
         var_963 = "";
         var_930 = [];
         var_615 = [];
         var_1181 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1181;
      }
      
      public function get question() : String
      {
         return var_963;
      }
      
      public function get choices() : Array
      {
         return var_930.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_963 = param1.readString();
         var_930 = [];
         var_615 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_930.push(param1.readString());
            var_615.push(param1.readInteger());
            _loc3_++;
         }
         var_1181 = param1.readInteger();
         return true;
      }
   }
}
