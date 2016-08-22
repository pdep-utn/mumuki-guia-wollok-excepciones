Cuando trabajamos con excepciones el orden es importante: lanzar una excepción interrumpe el flujo de ejecución a partir de ese momento, pero no descarta cambios realizados anteriormente: lo que pasó, pasó. 

Por eso, como regla práctica, siempre que querramos validar alguna situación, lo haremos siempre antes de realizar las operaciones con efecto :ok_hand:. Por ejemplo: 

* si vamos a cocinar, vamos a verificar que contemos con todos los ingredientes antes de prender las sartenes
* si vamos a bailar, nos aseguraremos de que contemos con el calzado adecuado antes de entrar en la pista de baile

> Veamos si queda claro: éste código tienen un problema relativo al manejo de excepciones. ¡Corregilo! 