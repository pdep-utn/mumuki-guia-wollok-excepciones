object eventos {
  var es =[]
  method ocurrir(evento) {
    es.add(evento)
  }
  method es() = es
}

object barcoPirata {
  method prepararTripulacion() {
    eventos.ocurrir("preparar")
  }
    method desembarcarBarco(ciudad) {
    eventos.ocurrir("desembarcar")
  }
}

object ciudad {
  method puedeHacerleFrenteA(barco) {
    eventos.ocurrir("puedeHacerFrente")
    return false
  }
}