package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1368:BigInteger;
      
      private var var_1006:BigInteger;
      
      private var var_1663:BigInteger;
      
      private var var_1367:BigInteger;
      
      private var var_1664:BigInteger;
      
      private var var_1665:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1368 = param1;
         var_1663 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1664.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1367 = new BigInteger();
         var_1367.fromRadix(param1,param2);
         var_1664 = var_1367.modPow(var_1006,var_1368);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1665.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_1006 = new BigInteger();
         var_1006.fromRadix(param1,param2);
         var_1665 = var_1663.modPow(var_1006,var_1368);
         return true;
      }
   }
}
