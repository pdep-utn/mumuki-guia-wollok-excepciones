object pepita {
  var energia = 50
  
  method comerAlpiste(cantidad) {
    if (cantidad <= 0) {
      error.throwWithMessage("error!")
    }
    energia += cantidad * 2
  }

}