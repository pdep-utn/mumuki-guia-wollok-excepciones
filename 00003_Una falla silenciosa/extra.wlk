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
    if (monto <= saldo) {
      saldo -= monto
    }
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