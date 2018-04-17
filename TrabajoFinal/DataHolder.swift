//
//  DataHolder.swift
//  TrabajoFinal
//
//  Created by GUILLERMO CRESPO AGUAYO on 10/4/18.
//  Copyright © 2018 Miguel Angel Martinez Gonzalez. All rights reserved.
//

import UIKit
import Firebase
class DataHolder: NSObject {
    static let sharedInstance:DataHolder = DataHolder()
    var fireStoreDB:Firestore?
    var miPerfil: Perfil=Perfil()
    
    func initFireBase(){
        FirebaseApp.configure()
        fireStoreDB=Firestore.firestore()
        
        let personasRef = fireStoreDB?.collection("cobayas")
        
        personasRef?.document("Colmillo").setData([
            "nombre": "Andres",
            "apellido": "Crespo",
            "email": "manco@gmail.com",
            "Mayor de Edad": false,
            ])
        personasRef?.document("Miky").setData([
            "nombre": "Miguel Angel",
            "apellido": "Martinez",
            "email": "bello@gmail.com",
            "Mayor de Edad": true,
            ])
        personasRef?.document("Creik").setData([
            "nombre": "Erick",
            "apellido": "Orellana",
            "email": "cobarde@gmail.com",
            "Mayor de Edad": false,
            ])
        personasRef?.document("Xkun").setData([
            "nombre": "Nacho",
            "apellido": "Fernandez",
            "email": "cafetera@gmail.com",
            "Mayor de Edad": false,
            ])
        personasRef?.document("Buca").setData([
            "nombre": "Javier",
            "apellido": "Sanabria",
            "email": "corealabuena@gmail.com",
            "Mayor de Edad": true,
            ])
        
        personasRef?.document("DSMan97").setData([
            "nombre": "Guillermo",
            "apellido": "Crespo",
            "email": "DSman97@gmail.com",
            "Mayor de Edad": true,
            ])
        
    }
    
}

