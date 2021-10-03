package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1172:String = "WN_CREATED";
      
      public static const const_875:String = "WN_DISABLE";
      
      public static const const_885:String = "WN_DEACTIVATED";
      
      public static const const_824:String = "WN_OPENED";
      
      public static const const_767:String = "WN_CLOSED";
      
      public static const const_935:String = "WN_DESTROY";
      
      public static const const_1570:String = "WN_ARRANGED";
      
      public static const const_460:String = "WN_PARENT_RESIZED";
      
      public static const const_944:String = "WN_ENABLE";
      
      public static const const_782:String = "WN_RELOCATE";
      
      public static const const_845:String = "WN_FOCUS";
      
      public static const const_987:String = "WN_PARENT_RELOCATED";
      
      public static const const_424:String = "WN_PARAM_UPDATED";
      
      public static const const_604:String = "WN_PARENT_ACTIVATED";
      
      public static const const_200:String = "WN_RESIZED";
      
      public static const const_876:String = "WN_CLOSE";
      
      public static const const_913:String = "WN_PARENT_REMOVED";
      
      public static const const_240:String = "WN_CHILD_RELOCATED";
      
      public static const const_616:String = "WN_ENABLED";
      
      public static const const_250:String = "WN_CHILD_RESIZED";
      
      public static const const_931:String = "WN_MINIMIZED";
      
      public static const const_557:String = "WN_DISABLED";
      
      public static const const_207:String = "WN_CHILD_ACTIVATED";
      
      public static const const_418:String = "WN_STATE_UPDATED";
      
      public static const const_662:String = "WN_UNSELECTED";
      
      public static const const_398:String = "WN_STYLE_UPDATED";
      
      public static const const_1450:String = "WN_UPDATE";
      
      public static const const_367:String = "WN_PARENT_ADDED";
      
      public static const const_605:String = "WN_RESIZE";
      
      public static const const_504:String = "WN_CHILD_REMOVED";
      
      public static const const_1427:String = "";
      
      public static const const_868:String = "WN_RESTORED";
      
      public static const const_262:String = "WN_SELECTED";
      
      public static const const_829:String = "WN_MINIMIZE";
      
      public static const const_863:String = "WN_FOCUSED";
      
      public static const const_1119:String = "WN_LOCK";
      
      public static const const_308:String = "WN_CHILD_ADDED";
      
      public static const const_831:String = "WN_UNFOCUSED";
      
      public static const const_444:String = "WN_RELOCATED";
      
      public static const const_803:String = "WN_DEACTIVATE";
      
      public static const const_1234:String = "WN_CRETAE";
      
      public static const const_978:String = "WN_RESTORE";
      
      public static const const_291:String = "WN_ACTVATED";
      
      public static const const_1113:String = "WN_LOCKED";
      
      public static const const_439:String = "WN_SELECT";
      
      public static const const_783:String = "WN_MAXIMIZE";
      
      public static const const_899:String = "WN_OPEN";
      
      public static const const_523:String = "WN_UNSELECT";
      
      public static const const_1578:String = "WN_ARRANGE";
      
      public static const const_1262:String = "WN_UNLOCKED";
      
      public static const const_1456:String = "WN_UPDATED";
      
      public static const const_896:String = "WN_ACTIVATE";
      
      public static const const_1287:String = "WN_UNLOCK";
      
      public static const const_814:String = "WN_MAXIMIZED";
      
      public static const const_817:String = "WN_DESTROYED";
      
      public static const const_878:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1559,cancelable);
      }
   }
}
