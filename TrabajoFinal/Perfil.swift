//
//  Perfil.swift
//  TrabajoFinal
//
//  Created by Miguel Angel Martinez Gonzalez on 12/4/18.
//  Copyright © 2018 Miguel Angel Martinez Gonzalez. All rights reserved.
//

import UIKit

class Perfil: NSObject {
    
    let IDnombre = "nombre"
    let IDCapital = "capital"
    let IDPais = "pais"
    let IDescapital = "escapital"
    
    var sNombre:String?
    var sCapital:String?
    var sPais:String?
    var bescapital:BooleanLiteralType?
    
    func setMap(valores:[String:Any]){
        sNombre = valores[IDnombre] as? String
        sCapital = valores[IDCapital] as? String
        sPais = valores[IDPais] as? String
        bescapital = valores[IDescapital] as? BooleanLiteralType
        
      
    }
    
    func getMap () -> [String:Any] {
        return[
            "nombre": sNombre as Any,
            "capital": sCapital as Any,
            "pais": sPais as Any,
            "escapital": bescapital as Any
        ]
    }
    
}

