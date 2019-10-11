No te vamos a mentir: las excepciones no abortan simplemente la evaluación del método, sino que también abortan la evaluación de toda la cadena de envío de mensajes.  

Por ejemplo, si bien en el programa anterior `cuentaOrigen.debitar(monto)` era un mensaje que podía lanzar una excepción....

```wollok
object cuentaOrigen {
  method debitar(monto) {
    if (monto > saldo) {
      self.error("...")
    }
    saldo -= monto
  }
}
```

...esta excepción no sólo evitaba que se evaluara `saldo -= monto`, sino que también evitaba que `cuentaDestino.depositar(monto)` se enviara:

```wollok
object transferencia {
   method realizar() {
      cuentaOrigen.debitar(monto)
      cuentaDestino.depositar(monto)
   }
}
```

A esto nos referiamos cuando decíamos que las excepciones interrupen el flujo del programa :sunglasses:.

> Veamos si se entiende: agregá al objeto `transferencia` un método `deshacer` que sea exactamente al revés del `realizar`: debe revertir la transferencia, moviendo el monto de la cuenta destino a la de origen. 
