Es bastante evidente que cuando lanzás una excepción tenés que darle un _mensaje_. Lo que no es evidente es que:

* Por un lado, el mensaje tiene que ser claro y representativo del error. Por ejempo, el mensaje `"ups"` no nos dice mucho, mientras que el mensaje `"el violín no está afinado"` nos da una idea mucho más precisa de qué sucedió. 
* Y por otro lado, el mensaje está _destinado al programador_: probablemente el usuario final que use nuestro sistema de cuentas bancarías probablemente no vea nuestros mensajes de error, sino pantallas mucho más bonitas :hatched_chick:. Por el contrario, quien verá estos mensajes serán el propio programador, cuando haya cometido algún error. 

Por ese motivo, siempre procurá lanzar excepciones con mensajes de error descriptivos.  

> Veamos si queda claro: este código tienen un problema relativo al manejo de excepciones. ¡Corregilo! 