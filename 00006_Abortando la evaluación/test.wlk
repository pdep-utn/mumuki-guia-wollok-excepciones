test "si pepita vuela una vez, consume 20" {
  pepita.volarEnCirculos()
  assert.equals(30, pepita.energia())
}


test "si pepita vuela dos veces, consume 40" {
  pepita.volarEnCirculos()
  pepita.volarEnCirculos()

  assert.equals(10, pepita.energia())
}

test "si le pedimos a pepita que vuele 3 veces, lanza una excepción" {
  2.times { pepita.volarEnCirculos() }
  assert.throwsExceptionLike(new Exception("No tengo suficiente energía"), { pepita.volarEnCirculos() })
}


test "si le pedimos a pepita que vuele 10 veces, consume sólo 40" {
  10.times { 
    try {
      pepita.volarEnCirculos()
    } catch e : Exception {
      //nada
    }
  }
  assert.equals(10, pepita.energia())
}