import src.noPudoAsustarException.NoPudoAsustarException
class Asustador{

  method asustarA(unaPersona) {
        self.puedeAsustarA(unaPersona)
        self.recibirCaramelosDe(unaPersona)
    }
  method puedeAsustarA(unaPersona) {
      if(!unaPersona.esAsustadoPor(self)){
        throw new NoPudoAsustarException(message = "Este adulto no se asusto")
      }
    }
    method recibirCaramelosDe(unaPersona)
}
