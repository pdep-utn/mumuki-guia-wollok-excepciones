object saqueo {
  method realizarContra(ciudad) {
    barcoPirata.prepararTripulacion()
    barcoPirata.desembarcarBarco(ciudad)
    if (ciudad.puedeHacerleFrenteA(barcoPirata)) {
      self.error("No se puede invadir la ciudad")
    }
  }
}