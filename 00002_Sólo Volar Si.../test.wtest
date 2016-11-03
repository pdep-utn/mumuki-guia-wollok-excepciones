test "si pepita vuela una vez, consume 20" {
  pepita.volarEnCirculos()
  assert.equals(30, pepita.energia())
}


test "si pepita vuela dos veces, consume 40" {
  pepita.volarEnCirculos()
  pepita.volarEnCirculos()

  assert.equals(10, pepita.energia())
}

test "si le pedimos a pepita que vuele 10 veces, consume solo 40" {
  10.times { pepita.volarEnCirculos() }
  assert.equals(10, pepita.energia())
}