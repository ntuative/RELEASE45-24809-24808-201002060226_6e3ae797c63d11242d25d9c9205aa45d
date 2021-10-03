package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_494;
         param1["bitmap"] = const_630;
         param1["border"] = const_602;
         param1["border_notify"] = const_1254;
         param1["button"] = const_339;
         param1["button_thick"] = const_584;
         param1["button_icon"] = const_1221;
         param1["button_group_left"] = const_688;
         param1["button_group_center"] = const_600;
         param1["button_group_right"] = const_618;
         param1["canvas"] = const_528;
         param1["checkbox"] = const_624;
         param1["closebutton"] = const_982;
         param1["container"] = const_286;
         param1["container_button"] = const_700;
         param1["display_object_wrapper"] = const_495;
         param1["dropmenu"] = const_429;
         param1["dropmenu_item"] = const_449;
         param1["frame"] = const_278;
         param1["frame_notify"] = const_1350;
         param1["header"] = const_681;
         param1["icon"] = const_770;
         param1["itemgrid"] = const_784;
         param1["itemgrid_horizontal"] = const_421;
         param1["itemgrid_vertical"] = const_489;
         param1["itemlist"] = const_970;
         param1["itemlist_horizontal"] = const_280;
         param1["itemlist_vertical"] = const_272;
         param1["maximizebox"] = const_1310;
         param1["menu"] = const_1201;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_924;
         param1["minimizebox"] = const_1260;
         param1["notify"] = const_1301;
         param1["null"] = const_487;
         param1["password"] = const_492;
         param1["radiobutton"] = const_639;
         param1["region"] = const_456;
         param1["restorebox"] = const_1291;
         param1["scaler"] = const_826;
         param1["scaler_horizontal"] = const_1296;
         param1["scaler_vertical"] = const_1293;
         param1["scrollbar_horizontal"] = const_368;
         param1["scrollbar_vertical"] = const_642;
         param1["scrollbar_slider_button_up"] = const_967;
         param1["scrollbar_slider_button_down"] = const_991;
         param1["scrollbar_slider_button_left"] = const_793;
         param1["scrollbar_slider_button_right"] = const_969;
         param1["scrollbar_slider_bar_horizontal"] = const_848;
         param1["scrollbar_slider_bar_vertical"] = const_877;
         param1["scrollbar_slider_track_horizontal"] = const_804;
         param1["scrollbar_slider_track_vertical"] = const_950;
         param1["scrollable_itemlist"] = const_1224;
         param1["scrollable_itemlist_vertical"] = const_381;
         param1["scrollable_itemlist_horizontal"] = const_859;
         param1["selector"] = const_506;
         param1["selector_list"] = const_539;
         param1["submenu"] = const_924;
         param1["tab_button"] = const_591;
         param1["tab_container_button"] = const_869;
         param1["tab_context"] = const_359;
         param1["tab_content"] = const_957;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_636;
         param1["input"] = const_535;
         param1["toolbar"] = const_1340;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
