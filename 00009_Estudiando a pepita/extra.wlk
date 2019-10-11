object pepita {
  var property energia = 50
  
  method comerAlpiste(cantidad) {
    energia += cantidad * 3
  }
  
  method volarEnCirculos() {
    if (energia < 20) {
      error.throwWithMessage("pepita no tiene suficiente energía para volar")      
    }
    energia -= 20
  }

}