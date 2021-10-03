package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1711:Date;
      
      private var var_1102:Boolean = false;
      
      private var _type:int;
      
      private var var_347:BitmapData;
      
      private var var_237:Boolean = false;
      
      private var var_1084:int;
      
      private var var_520:int = 1;
      
      private var var_923:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_347;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_520;
         if(var_520 < 0)
         {
            var_520 = 0;
         }
         var_923 = var_1084;
         var_237 = false;
         var_1102 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_923 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_237;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_347 = param1;
      }
      
      public function get duration() : int
      {
         return var_1084;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1102;
      }
      
      public function get effectsInInventory() : int
      {
         return var_520;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_347;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_237)
         {
            var_1711 = new Date();
         }
         var_237 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_520 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_237)
         {
            _loc1_ = var_923 - (new Date().valueOf() - var_1711.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_923;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1102 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1084 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
