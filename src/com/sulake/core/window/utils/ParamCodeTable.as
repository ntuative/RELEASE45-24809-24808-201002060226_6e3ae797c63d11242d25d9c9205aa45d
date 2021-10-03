package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_102;
         param1["bound_to_parent_rect"] = const_65;
         param1["child_window"] = const_989;
         param1["embedded_controller"] = const_314;
         param1["resize_to_accommodate_children"] = const_44;
         param1["input_event_processor"] = const_32;
         param1["internal_event_handling"] = const_645;
         param1["mouse_dragging_target"] = const_196;
         param1["mouse_dragging_trigger"] = const_300;
         param1["mouse_scaling_target"] = const_237;
         param1["mouse_scaling_trigger"] = const_428;
         param1["horizontal_mouse_scaling_trigger"] = const_206;
         param1["vertical_mouse_scaling_trigger"] = const_176;
         param1["observe_parent_input_events"] = const_852;
         param1["optimize_region_to_layout_size"] = const_385;
         param1["parent_window"] = const_790;
         param1["relative_horizontal_scale_center"] = const_142;
         param1["relative_horizontal_scale_fixed"] = const_104;
         param1["relative_horizontal_scale_move"] = const_294;
         param1["relative_horizontal_scale_strech"] = const_247;
         param1["relative_scale_center"] = const_947;
         param1["relative_scale_fixed"] = const_580;
         param1["relative_scale_move"] = const_810;
         param1["relative_scale_strech"] = const_882;
         param1["relative_vertical_scale_center"] = const_138;
         param1["relative_vertical_scale_fixed"] = const_86;
         param1["relative_vertical_scale_move"] = const_310;
         param1["relative_vertical_scale_strech"] = const_253;
         param1["on_resize_align_left"] = const_632;
         param1["on_resize_align_right"] = const_340;
         param1["on_resize_align_center"] = const_383;
         param1["on_resize_align_top"] = const_571;
         param1["on_resize_align_bottom"] = const_357;
         param1["on_resize_align_middle"] = const_442;
         param1["on_accommodate_align_left"] = const_908;
         param1["on_accommodate_align_right"] = const_373;
         param1["on_accommodate_align_center"] = const_707;
         param1["on_accommodate_align_top"] = const_907;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_665;
         param1["route_input_events_to_parent"] = const_427;
         param1["use_parent_graphic_context"] = const_15;
         param1["draggable_with_mouse"] = const_972;
         param1["scalable_with_mouse"] = const_844;
         param1["reflect_horizontal_resize_to_parent"] = const_464;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_228;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
