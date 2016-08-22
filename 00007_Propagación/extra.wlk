object pepita {
  var energia = 50
  
  method comerAlpise(cantidad) {
    energia += cantidad * 2
  }
  
  method volarEnCirculos() {
    if (energia < 20) {
      error.throwWithMessage("pepita no tiene suficiente energía para volar")      
    }
    energia -= 20
  }

}