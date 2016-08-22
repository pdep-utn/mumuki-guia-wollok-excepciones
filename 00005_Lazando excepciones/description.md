¿Interesante no? No solamente tuvimos un mensaje de error claro que nos permite entender qué sucedió, sino que además, no evitó que se deposite dinero en la cuenta de destino. :smile:. ¿Cómo fue esto posible?

La primera versión del código de `cuentaOrigen` se veía aproximadamente así: 

```wollok
object cuentaOrigen {
  var saldo = 20
  method debitar(monto) {
    if (monto <= saldo) {
      saldo -= monto
    }
  }
}
```

Pero la segunda versión se ve así:

```wollok
object cuentaOrigen {
  var saldo = 20
  method debitar(monto) {
    if (monto > saldo) {
      error.throwWithMessage("No se puede debitar, porque el monto $"+monto+" es mayor al saldo $" +saldo+")
    }
    saldo -= monto
  }
}
```

Mediante la sentencia `error.throwWithMessage(mensaje)` lo que hicimos fue _lanzar una excepción_: provocar un error explícito que _interrumpe_ el flujo del programa
