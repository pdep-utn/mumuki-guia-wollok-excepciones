object pepita {
  var energia = 50
  
  method comerAlpiste(cantidad) {
    if (cantidad <= 0) {
      self.error("error!")
    }
    energia += cantidad * 2
  }

}