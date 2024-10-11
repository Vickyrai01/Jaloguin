import asustador.Asustador
import salud.salud.*
class Ninio inherits Asustador{
    const elementosTerrorificos = []
    var actitud
    var caramelos = 0
    var salud

    method caramelos() = caramelos
    method elementosTerrorificos() = elementosTerrorificos

    method capacidadDeSusto() =  self.sustosDeSusElementos() * actitud
    method sustosDeSusElementos() = elementosTerrorificos.sum({unElemento => unElemento.sustoGenerado()})

    method tieneMasDeTantosCaramelos(unaCantidad) = caramelos > unaCantidad

    override method recibirCaramelosDe(unaPersona) {
      caramelos += unaPersona.caramelosPara(self)
    }

    method comer(unosCaramelos) {
        self.validarCantidadDeCaramelos(unosCaramelos)
        salud.comer(unosCaramelos, self)
        caramelos -= unosCaramelos
    }

    method validarCantidadDeCaramelos(unosCaramelos) =
      if(unosCaramelos > caramelos){
            throw new NoHaySuficientesCaramelosException(message = "No hay suficientes caramelos para comer")
    }

    method empacharse(){ salud = empachado} 
  
    method ponerseEnCama(){salud = encamado}

    method DejarDeAsustar() {actitud = 0}

    method perderActitud(){ actitud = actitud.div(2)}
}
class NoHaySuficientesCaramelosException inherits Exception{}
