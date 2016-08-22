Recordemos a nuestra vieja amiga `pepita` y su método `volarEnCirculos`:

```wollok
object pepita {
  var energia = 50
  
  method volarEnCirculos() {
    energia -= 20
  }
}
```

¿Qué le pasará cuando vuele _demasiado_? 

> En la consola probá lo siguiente: 
> 
> * Qué pasa con su energía a medida que la hacemos volar en circulos. ¿Hasta qué punto disminuye?
> * ¿Puede seguir volando cuando ya no tenga energía?
