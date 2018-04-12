//
//  Perfil.swift
//  TrabajoFinal
//
//  Created by Miguel Angel Martinez Gonzalez on 12/4/18.
//  Copyright © 2018 Miguel Angel Martinez Gonzalez. All rights reserved.
//

import UIKit

class Perfil: NSObject {
    
    var sNombre:String?
    var iFecha:Int?
    var sApellidos:String?
    var iAltura:Int?
    
    func setMap(valores:[String:Any]){
        sNombre = valores["nombre"] as? String
        sApellidos = valores["apellidos"] as? String
        iFecha = valores["nacimiento"] as? Int
        iAltura = valores["altura"] as? Int
    }
    
    func getMap () -> [String:Any] {
        return[
                "nombre": sNombre as Any,
                "email": sApellidos as Any,
                "contrasena": iFecha as Any,
                "altura": iAltura as Any
        ]
    }

}
