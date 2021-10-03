package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1589:int;
      
      private var var_1594:int;
      
      private var var_1592:int;
      
      private var var_1587:int;
      
      private var _nutrition:int;
      
      private var var_1209:int;
      
      private var var_1591:int;
      
      private var var_1588:int;
      
      private var _energy:int;
      
      private var var_1590:int;
      
      private var var_1595:int;
      
      private var _ownerName:String;
      
      private var var_1593:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1589;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1594 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1589 = param1;
      }
      
      public function get petId() : int
      {
         return var_1209;
      }
      
      public function get experienceMax() : int
      {
         return var_1588;
      }
      
      public function get nutritionMax() : int
      {
         return var_1587;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1591 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1593;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1209 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1595;
      }
      
      public function get respect() : int
      {
         return var_1594;
      }
      
      public function get levelMax() : int
      {
         return var_1591;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1588 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1592 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1587 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1593 = param1;
      }
      
      public function get experience() : int
      {
         return var_1592;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1595 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1590 = param1;
      }
      
      public function get age() : int
      {
         return var_1590;
      }
   }
}
