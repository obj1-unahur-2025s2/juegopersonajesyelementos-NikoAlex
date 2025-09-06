import armas.*
import elementos.*

object luisa {
  var pesonajeActivo = null

  //unPersonaje es mario o floqui
  method asignarPersonaje(unPersonaje) {
    pesonajeActivo = unPersonaje
  }
  method aparece(unElemento) {
    pesonajeActivo.encontrar(unElemento)
  }

  method pesonajeActivo() = pesonajeActivo 
}

object floki {
 var arma = jabalina
 method encontrar(elemento) {
   if (arma.estaCargada()){
    elemento.recibirAtaque(arma.potencia())
    arma.usar()
   }
 }
}

object mario {
  var valorRecolectado = 0
  var ultimoElemento = ningunElemento
  method encontrar(elemento) {
    elemento.recibirTrabajo()
    valorRecolectado += elemento.valorOtorgado()
    ultimoElemento = elemento
  }
  method estaFeliz() = valorRecolectado >= 50 or ultimoElemento.altura() >= 10 
}