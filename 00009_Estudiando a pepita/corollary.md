Moraleja: si 

1. A envía un mensaje m1 a B
2. B envía un mensaje m2 a C
3. y m2 lanza una excepción
4. se aborta el método m2
5. y se aborta también el método m1

Es decir: las excepciones se propaga automáticamente a quien hayan enviado el mensaje que la provocó. ¡No hay que hacer nada para que eso suceda!