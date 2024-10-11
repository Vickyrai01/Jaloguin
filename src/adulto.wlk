class Adulto{
    const ninosQueIntentaronDarSusto 

    method esAsustadoPor(unAsustador) =  self.tolerancia() < unAsustador.capacidadDeSusto()

    method caramelosPara(unAsustador) = self.tolerancia().div(2)

    method tolerancia() = ninosQueIntentaronDarSusto.filter({unNinio => unNinio.tieneMasDeTantosCaramelos(15)})
}

class Anciano inherits Adulto{
    override method esAsustadoPor(unAsustador) = true

    override method caramelosPara(unAsustador) = super(unAsustador).div(2) 
}
object adultoNecio{
    method esAsustadoPor(unAsustador) = false
    method caramelosPara(unAsustador){}
}