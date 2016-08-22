Que los objetos _fallen silenciosamente_ es malo porque perdemos la confianza en ellos :broken_heart:: no estamos seguros de que el objeto cumplió con nuestra órden. 

Esto no parerce tan terrible cuando del vuelo de las golondrinas se trata, pero ¿y si estamos haciendo una transferencia bancaria? 

```wollok
object transferencia {
   var monto = 40
   method realizar() {
      cuentaOrigen.debitar(monto)
      cuentaDestino.depositar(monto)
   }
}
```

¿Qué sucedería si realizamos la transferencia y `debitar` **no** debitara de la cuenta origen cuando no tiene saldo?

> ¡Descubrilo! Haciendo consultas en la consola, averiguá con cuanto dinero comienzan y terminan las cuentas origen y destino. 
>
> Asumí que `cuentaOrigen` y `cuentaDestino` entienden el mensaje `saldo`

