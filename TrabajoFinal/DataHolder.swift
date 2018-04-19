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
        
        let ciudadesRef = fireStoreDB?.collection("Ciudades")
        
        ciudadesRef?.document("MAD").setData([
            "nombre": "Madrid",
            "capital": "Madrid",
            "país": "España",
            "escapital": true
            ])
        ciudadesRef?.document("CAT").setData([
            "nombre": "Catalunya",
            "capital": "Barcelona",
            "país": "España",
            "escapital": false
            ])
        ciudadesRef?.document("ANDA").setData([
            "nombre": "Andalucia",
            "capital": "Sevilla",
            "país": "España",
            "escapital": false
            ])
        ciudadesRef?.document("EXTR").setData([
            "nombre": "Extremadura",
            "capital": "Cáceres",
            "país": "España",
            "escapital": false
            ])
        
    }
    
}

