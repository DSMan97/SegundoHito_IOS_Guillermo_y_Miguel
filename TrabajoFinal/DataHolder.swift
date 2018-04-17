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
    var miPerfil:Perfil=Perfil()
    
  
    func initFireBase(){
        FirebaseApp.configure()
        fireStoreDB=Firestore.firestore()
        
    }
    
}
