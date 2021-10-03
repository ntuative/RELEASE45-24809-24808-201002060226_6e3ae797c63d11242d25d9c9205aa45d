package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_567:String = "Rectangle";
      
      public static const const_38:String = "Boolean";
      
      public static const const_634:String = "Number";
      
      public static const const_42:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_695:String = "Point";
      
      public static const const_815:String = "Array";
      
      public static const const_945:String = "uint";
      
      public static const const_389:String = "hex";
      
      public static const const_954:String = "Map";
       
      
      private var var_587:String;
      
      private var var_169:Object;
      
      private var var_2304:Boolean;
      
      private var _type:String;
      
      private var var_2214:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_587 = param1;
         var_169 = param2;
         _type = param3;
         var_2214 = param4;
         var_2304 = param3 == const_954 || param3 == const_815 || param3 == const_695 || param3 == const_567;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_389:
               return "0x" + uint(var_169).toString(16);
            case const_38:
               return Boolean(var_169) == true ? "true" : "ItemDataUpdateMessageEvent";
            case const_695:
               return "Point(" + Point(var_169).x + ", " + Point(var_169).y + ")";
            case const_567:
               return "Rectangle(" + Rectangle(var_169).x + ", " + Rectangle(var_169).y + ", " + Rectangle(var_169).width + ", " + Rectangle(var_169).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_954:
               _loc3_ = var_169 as Map;
               _loc1_ = "<var key=\"" + var_587 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_815:
               _loc4_ = var_169 as Array;
               _loc1_ = "<var key=\"" + var_587 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_695:
               _loc5_ = var_169 as Point;
               _loc1_ = "<var key=\"" + var_587 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_567:
               _loc6_ = var_169 as Rectangle;
               _loc1_ = "<var key=\"" + var_587 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_42 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_389:
               _loc1_ = "<var key=\"" + var_587 + "\" value=\"" + "0x" + uint(var_169).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_587 + "\" value=\"" + var_169 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_169;
      }
      
      public function get valid() : Boolean
      {
         return var_2214;
      }
      
      public function get key() : String
      {
         return var_587;
      }
   }
}
