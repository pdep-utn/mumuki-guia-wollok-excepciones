object cuentaOrigen {
  var saldo = 20
  method debitar(monto) {
    if (monto > saldo) {
      self.error("No se puede debitar, porque el monto $"+monto+" es mayor al saldo $" +saldo)
      
    }
    saldo -= monto
  }
  method depositar(monto) {
    saldo += monto    
  }
  method saldo() {
    return saldo
  }
}

object cuentaDestino {
  var saldo = 100
  method debitar(monto) {
    if (monto > saldo) {
      self.error("No se puede debitar, porque el monto $"+monto+" es mayor al saldo $" +saldo)
      
    }
    saldo -= monto
  }
  method depositar(monto) {
    saldo += monto    
  }
  method saldo() {
    return saldo
  }
}