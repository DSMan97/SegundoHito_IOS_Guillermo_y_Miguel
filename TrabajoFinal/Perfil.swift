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
    var sEmail:String?
    
    func setMap(valores:[String:Any]){
        sNombre = valores["nombre"] as? String
        sEmail = valores["email"] as? String
       
    }
    
    func getMap () -> [String:Any] {
        return[
                "nombre": sNombre as Any,
                "email": sEmail as Any,
               
        ]
    }

}
