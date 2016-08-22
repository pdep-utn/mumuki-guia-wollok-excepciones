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
      error.throwWithMessage("Error: el monto a debitar $"+monto+" es mayor al saldo $" +saldo+". No se puede realizar el depósito")
      
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