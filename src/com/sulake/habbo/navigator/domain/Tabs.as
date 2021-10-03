package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_595:int = 6;
      
      public static const const_199:int = 5;
      
      public static const const_517:int = 2;
      
      public static const const_287:int = 9;
      
      public static const const_297:int = 4;
      
      public static const const_241:int = 2;
      
      public static const const_564:int = 4;
      
      public static const const_185:int = 8;
      
      public static const const_540:int = 7;
      
      public static const const_219:int = 3;
      
      public static const const_284:int = 1;
      
      public static const const_193:int = 5;
      
      public static const const_361:int = 12;
      
      public static const const_290:int = 1;
      
      public static const const_598:int = 11;
      
      public static const const_497:int = 3;
      
      public static const const_1543:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_354:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_354 = new Array();
         var_354.push(new Tab(_navigator,const_284,const_361,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_441));
         var_354.push(new Tab(_navigator,const_241,const_290,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_441));
         var_354.push(new Tab(_navigator,const_297,const_598,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_773));
         var_354.push(new Tab(_navigator,const_219,const_199,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_441));
         var_354.push(new Tab(_navigator,const_193,const_185,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_503));
         setSelectedTab(const_284);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_354)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_354)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_354)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_297;
      }
      
      public function get tabs() : Array
      {
         return var_354;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
