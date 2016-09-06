test "pepita.comerAlpiste(0) debería fallar" {
  assert.throwsException({ it =>  pepita.comerAlpiste(0) })
}

test "pepita.comerAlpiste(-10) debería fallar" {
  assert.throwsException({ it =>  pepita.comerAlpiste(-10) })
}

test "pepita.comerAlpiste(-10) debería lanzar un mensaje de error expresivo" {
 try {
   pepita.comerAlpiste(-10)
 } catch e : Exception {
   assert.that(["positivo", "negativo", "menor", "cero", "0", "-10"].any { it =>  e.getMessage().contains(it) })
 }
}


test "pepita.comerAlpiste(10) NO debería fallar" {
  pepita.comerAlpiste(10)
  
}
