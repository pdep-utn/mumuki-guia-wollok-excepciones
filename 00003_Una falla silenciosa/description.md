Que los objetos _fallen silenciosamente_es malo porque perdemos la confianza en ellos: ya no estamos seguros si al enviar el mensaje realmente el objeto cumplió con nuestra órden. Esto no parerce tan terrible cuando hablamos del vuelo de las golondrinas, pero ¿qué pasa si estamos haciendo una transferencia bancaria? 

```wollok
object transferencia {
   var monto = 40
   method realizar() {
      cuentaOrigen.debitar(monto)
      cuentaDestino.depositar(monto)
   }
}
```

> ¿Qué sucedería si `debitar` **no** debitara de la cuenta origen cuando no tiene saldo? ¡Probalo!
> 
> Asumí que `cuentaOrigen` y `cuentaDestino` entienden el mensaje `saldo`

