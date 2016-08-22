test "existe carlos"  {
  carlos
}

test "carlos estudia a pepita" {
 carlos.estudiarPepita() 
}

test "si pepita tiene poca energía, estudia a pepita falla" {
 pepita.volarEnCirculos()
 pepita.volarEnCirculos()
 assert.throwsException({carlos.estudiarPepita()})
}