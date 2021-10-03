package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_786:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1309:Boolean = true;
      
      private var var_1160:int = 0;
      
      private var var_736:int = 0;
      
      private var var_1085:int = 0;
      
      private var var_737:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1161:int = 15;
      
      private var var_161:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1163:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1085 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1309)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_736,var_737);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1160;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_736 == 0 && var_737 == 0;
      }
      
      private function resetLog() : void
      {
         var_736 = 0;
         var_737 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1309)
         {
            return;
         }
         if(getTimer() - var_1085 > var_1163 * 1000 && var_1160 < var_1161)
         {
            var_1085 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_161 = param1;
         var_1163 = int(var_161.getKey("lagwarninglog.interval","60"));
         var_1161 = int(var_161.getKey("lagwarninglog.reportlimit","15"));
         var_1309 = Boolean(int(var_161.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_737 += 1;
            case const_786:
               var_736 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
