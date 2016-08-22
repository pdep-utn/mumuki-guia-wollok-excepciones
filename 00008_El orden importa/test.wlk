test "el saqueo se realiza en el orden correcto" {
  saqueo.realizarContra(ciudad)
  assert.that(["puedeHacerFrente", "preparar", "desembarcar"], eventos.es())
}