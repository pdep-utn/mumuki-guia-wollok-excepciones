Lo que acabamos de hacer _funciona_, pero tiene un problema importante: le estamos diciendo a `pepita` que vuele en circulos, pero ahora no sabemos realmente si lo hizo o no. 

Y esto es malo, porque perdemos la confianza en los objetos: ya no estamos seguros si al enviar el mensaje realmente el objeto cumplió con nuestra órden. Esto no parerce tan terrible cuando hablamos del vuelo de las golondrinas, pero ¿qué pasa si estamos haciendo una transferencia bancaria? 

```wollok
object transferencia {
   //algunos atributos...
   method realizar() {
      cuentaOrigen.debitar(monto)
      cuentaDestino.depositar(monto)
   }
}
```

> ¿Qué sucedería si `debitar` **no** debitara de la cuenta origen cuando no tiene saldo? ¡Probalo!
> 
> Tené en cuenta que `cuentaOrigen` y `cuentaDestino` entienden el mensaje `saldo`

