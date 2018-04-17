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
    let IDapellidos = "apellidos"
    let IDemail = "email"
    let IDmayor = "mayor de edad"
    
    var sNombre:String?
    var sApellidos:String?
    var sEmail:String?
    var bMayor:BooleanLiteralType?
    
    func setMap(valores:[String:Any]){
        sNombre = valores[IDnombre] as? String
        sApellidos = valores[IDapellidos] as? String
        sEmail = valores[IDemail] as? String
        bMayor = valores[IDmayor] as? BooleanLiteralType
        
        print("Nombre de tu perfil: ",sNombre)
        print("Apellidos de tu perfil: ",sApellidos)
        print("Email de tu perfil: ",sEmail)
        print("Edad de tu perfil: ",bMayor)
    }
    
    func getMap () -> [String:Any] {
        return[
            "nombre": sNombre as Any,
            "apellidos": sApellidos as Any,
            "email": sEmail as Any,
            "mayor": bMayor as Any
        ]
    }
    
}

