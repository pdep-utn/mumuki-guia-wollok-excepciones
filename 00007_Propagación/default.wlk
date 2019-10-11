object transferencia {
   var property monto
   
   method realizar() {
      cuentaOrigen.debitar(monto)
      cuentaDestino.depositar(monto)
   }
   
   //completar acá...
}
