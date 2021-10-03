package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_920:SoundChannel = null;
      
      private var var_750:Boolean;
      
      private var var_921:Sound = null;
      
      private var var_648:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_921 = param1;
         var_921.addEventListener(Event.COMPLETE,onComplete);
         var_648 = 1;
         var_750 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_750;
      }
      
      public function stop() : Boolean
      {
         var_920.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_750 = false;
         var_920 = var_921.play(0);
         this.volume = var_648;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_648;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_920.position;
      }
      
      public function get length() : Number
      {
         return var_921.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_648 = param1;
         if(var_920 != null)
         {
            var_920.soundTransform = new SoundTransform(var_648);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_750 = true;
      }
   }
}
