import src.noPudoAsustarException.NoPudoAsustarException
import asustador.Asustador

class LegionDelTerror inherits Asustador{
    const integrantes = #{}

    method capacidadDeSusto() = integrantes.sum({unNinio => unNinio.capacidadDeSusto()}) 
    method caramelos() = integrantes.sum({unNinio => unNinio.caramelos()})

    method lider() = integrantes.max({unNinio => unNinio.capacidadDeSusto()})


    override method recibirCaramelosDe(unaPersona){
        self.lider().recibirCaramelosDe(unaPersona)
    }

    method validarMiembros(unosMiembros) {
    if(unosMiembros.size() < 2) {
      throw new NoSonSuficientesNiniosException(message = "Una legión debe tener al menos 2 miembros!")
    }  	
  }
}
class NoSonSuficientesNiniosException inherits Exception{}