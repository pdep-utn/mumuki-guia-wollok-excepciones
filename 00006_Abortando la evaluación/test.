test "si pepita vuela una vez, consume 20" {
  pepita.volarEnCirculos()
  assert.equals(30, pepita.energia())
}


test "si pepita vuela dos veces, consume 40" {
  pepita.volarEnCirculos()
  pepita.volarEnCirculos()

  assert.equals(10, pepita.energia())
}

test "si le pedimos a pepita que vuele 3 veces, lanza una excepción y consume sólo 40" {
  2.times { pepita.volarEnCirculos() }
  assert.throwsException({ pepita.volarEnCirculos() })
  assert.equals(10, pepita.energia())
}

test "La excepción que se lanza tiene la descripción correcta" {
  2.times { pepita.volarEnCirculos() }
  assert.throwsExceptionLike(new Exception("No tengo suficiente energía"), { pepita.volarEnCirculos() })
}
