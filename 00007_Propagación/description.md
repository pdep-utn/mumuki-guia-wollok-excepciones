No te vamos a mentir: las excepciones no abortan simplemente la evaluación del método, sino que también abortan la evaluación de toda la cadena de envío de mensajes.  

Por ejemplo, si bien en el programa anterior `cuentaOrigen.debitar(monto)` era un mensaje que podía lanzar una excepción....

```wollok
object cuentaOrigen {
  method debitar(monto) {
    if (monto > saldo) {
      error.throwWithMessage("...")
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

> Veamos si queda claro: `carlos` es un ornitólogo que investiga el comportamiento de `pepita`, y como parte de su estudio la hace `comerAlpise(10)`, `volarEnCirculos()`  dos veces y finalmente `comerAlpise(10)`. 
> 
> Queremos que `carlos` entienda un mensaje `estudiarPepita()` que le haga hacer su rutina, y que lance con una excepción si `pepita.volarEnCirculos()` la lanza.
> 
> Escribí el código necesario y pensá si es necesario hacer algo especial para que la excepción que lanza `pepita` se propague

