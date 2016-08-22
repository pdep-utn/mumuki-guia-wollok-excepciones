object transferencia {
   var monto = 40
   method realizar() {
      cuentaOrigen.debitar(monto)
      cuentaDestino.depositar(monto)
   }
}

object cuentaOrigen {
  var saldo = 20
  method debitar(monto) {
    if (monto > saldo) {
      error.throwWithMessage("No se puede debitar, porque el monto $"+monto+" es mayor al saldo $" +saldo+")
      
    }
    saldo -= monto
  }
  method saldo() {
    return saldo
  }
}

object cuentaDestino {
  var saldo = 100
  method depositar(monto) {
    saldo += monto    
  }
  method saldo() {
    return saldo
  }
}