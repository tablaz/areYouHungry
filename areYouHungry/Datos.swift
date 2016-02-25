//
//  Datos.swift
//  areYouHungry
//
//  Created by Ricardo on 24/02/2016.
//  Copyright © 2016 Tablaz. All rights reserved.
//

import Foundation



class ColeccionDePaises {
    // FIXME : Aumentar el numero de Paises Hasta 20
    let paises : [String] = ["Canada", "China", "Germany", "SantaCruz", "USA", "Winterfell", "The Wall", "Francia", "Botswana", "Chipre", "Egypt", "Ghana", "Harrenhal", "Argentina", "Casterly Rock"," King's Landing", "Braavos", "Mordor", "Colombia"]
    
    
    func obtenPais( )->String {
        return paises[Int(arc4random()) % paises.count]
    }

}

class ColeccionDeHamburguesa {
    let hamburguesas : [String] =  ["canada", "china", "germany", "santacruz", "usa"]
    func obtenHamburguesa( )->String {
        return hamburguesas[Int(arc4random()) % hamburguesas.count]
    }
}

class Precio {
    var precio : Double = 0.0
    
    func getPrecioAleatorio() ->Double {
       precio = Double(arc4random_uniform(1999))/100
       return precio
    }
    
}