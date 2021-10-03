package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1428:GarbageMonitor = null;
      
      private var var_1085:int = 0;
      
      private var var_1291:Boolean = false;
      
      private var var_1840:String = "";
      
      private var var_1427:String = "";
      
      private var var_319:Number = 0;
      
      private var var_1161:int = 10;
      
      private var var_2277:Array;
      
      private var var_597:int = 0;
      
      private var var_1163:int = 60;
      
      private var var_966:int = 0;
      
      private var var_967:int = 0;
      
      private var var_2146:String = "";
      
      private var var_1838:Number = 0;
      
      private var var_1162:int = 1000;
      
      private var var_1837:Boolean = true;
      
      private var var_1839:Number = 0.15;
      
      private var var_161:IHabboConfigurationManager = null;
      
      private var var_1836:String = "";
      
      private var var_1160:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2277 = [];
         super();
         var_1427 = Capabilities.version;
         var_1840 = Capabilities.os;
         var_1291 = Capabilities.isDebugger;
         var_1836 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1428 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1085 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1428.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1428.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_319;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1163 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1427;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_967;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1162)
         {
            ++var_966;
            _loc3_ = true;
         }
         else
         {
            ++var_597;
            if(var_597 <= 1)
            {
               var_319 = param1;
            }
            else
            {
               _loc4_ = Number(var_597);
               var_319 = var_319 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1085 > var_1163 * 1000 && var_1160 < var_1161)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_319);
            _loc5_ = true;
            if(var_1837 && var_1160 > 0)
            {
               _loc6_ = differenceInPercents(var_1838,var_319);
               if(_loc6_ < var_1839)
               {
                  _loc5_ = false;
               }
            }
            var_1085 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1838 = var_319;
               if(sendReport())
               {
                  ++var_1160;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1161 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1162 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1836,var_1427,var_1840,var_2146,var_1291,_loc4_,_loc3_,var_967,var_319,var_966);
            _connection.send(_loc1_);
            var_967 = 0;
            var_319 = 0;
            var_597 = 0;
            var_966 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_161 = param1;
         var_1163 = int(var_161.getKey("performancetest.interval","60"));
         var_1162 = int(var_161.getKey("performancetest.slowupdatelimit","1000"));
         var_1161 = int(var_161.getKey("performancetest.reportlimit","10"));
         var_1839 = Number(var_161.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1837 = Boolean(int(var_161.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
