No es muy sorprendente: si `pepita` vuela muchas veces, se va a quedar sin energía. Y eventualmente no sólo se volverá negativa, sino que continuará consumiendo energía al volar. 

```wollok
pepita.volarEnCirculos() //su energía queda en 30
pepita.volarEnCirculos() //su energía queda en 10
pepita.volarEnCirculos() //su energía queda en -10
pepita.volarEnCirculos() //su energía queda en -20
//etc...
```

Si bien es fácil de entender, ésto está claramente mal: la energía de `pepita` debería ser siempre positiva. Y no debería hacer actividades que le consuman más energía de la que tiene. ¿Qué podríamos hacer?

> Además de envíos de mensajes, en objetos contamos con una estructura de control bastante conocida: la alternativa condicional o `if`: 
> 
> ```wollok
> if (dia.esSoleado())
>   picnic.preparar()
> ```
> 
> Sabiendo esto, modificá 
