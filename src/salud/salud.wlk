class Salud{

    method comer(unosCaramelos, unaPersona){
        if(unosCaramelos > 10){self.consecuenciasPorComerMucho(unaPersona)}
    }
    method consecuenciasPorComerMucho(unaPersona){}
}
object sano inherits Salud{

    override method consecuenciasPorComerMucho(unaPersona){
        unaPersona.empacharse()
    }
}

object empachado inherits Salud{

    override method consecuenciasPorComerMucho(unaPersona){
        unaPersona.perderActitud()
        unaPersona.ponerseEnCama()
    }

}
object encamado inherits Salud{

    override method comer(unosCaramelos, unaPersona){
        unaPersona.DejarDeAsustar()
        throw new YaNoPuedeComerMasCaramelosException(message =  "Ya comio muchos caramelos y no puede mas")
    }
}

class YaNoPuedeComerMasCaramelosException inherits Exception{}