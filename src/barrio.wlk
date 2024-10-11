class Barrio {
    const habitantes

    method niniosConMasCaramelos() = habitantes.niniosOrdenadosSegunCantCaramelos().take(3)

    method niniosOrdenadosSegunCantDeCaramelos() = 
        habitantes.sortedBy { unNinio, otroNinio => unNinio.caramelos() > otroNinio.caramelos() }

    method elementosDeNiniosDulceros() = self.conseguirElementosDe(self.niniosDulceros()).asSet()

    method niniosDulceros() = habitantes.filter({unNinio => unNinio.tieneMasDeTantosCaramelos(10)})

    method conseguirElementosDe(unosNinios) = unosNinios.flatMap({unNinio => unNinio.elementosTerrorificos()})
}

