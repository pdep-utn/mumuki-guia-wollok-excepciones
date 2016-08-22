object saqueo {
  method realizarContra(ciudad) {
    barcoPirata.prepararTripulacion()
    barcoPirata.desembarcarBarco(cidad)
    if (ciudad.puedeHacerleFrenteA(barcoPirata)) {
      error.throwWithMessage("No se puede invadir la ciudad")
    }
  }
}