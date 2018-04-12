//
//  ViewController.swift
//  TrabajoFinal
//
//  Created by Miguel Angel Martinez Gonzalez on 5/4/18.
//  Copyright © 2018 Miguel Angel Martinez Gonzalez. All rights reserved.
//

import UIKit
import CoreData
import FirebaseAuth
class ViewController: UIViewController {
    
    @IBOutlet var lblPrueba:UILabel?
    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPass:UITextField?
    @IBOutlet var btnLogin:UIButton?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtUser?.text = DataHolder.sharedInstance.sNick
        txtPass?.text=DataHolder.sharedInstance.sNick
        
          }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func eventoClickLogin(){
        Auth.auth().signIn(withEmail: (txtUser?.text)!, password:
        (txtPass?.text)!) {(user, error) in
            if user != nil{
                let ruta =
                DataHolder.sharedInstance.fireStoreDB?.collection("Perfiles").document((user?.uid)!)
                ruta?.getDocument{ (document, error) in
                    if document != nil{
                        DataHolder.sharedInstance.miPerfil.setMap(valores: (document?.data())!)
                       // print(document?.data())
                        self.performSegue(withIdentifier: "trlogin", sender: self)
                    }
                    else{
                        print(error!)
                    }
                }
                
            }
            else{
                print("NO SE HA LOGUEADO")
                print(error!)
            }
        }
        Auth.auth().addStateDidChangeListener { (auth, user) in
         
            self.performSegue(withIdentifier: "trlogin", sender: self)
        }
        
        
        
        
        
        //Codigo de acceso en el login y sus distintos casos
       if txtUser?.text == "miguel" && txtPass?.text == "12345"{
            self.performSegue(withIdentifier: "SaltoInicio", sender: self)
        }else
        if txtUser?.text == "guille" && txtPass?.text == "54321"{
            self.performSegue(withIdentifier: "SaltoInicio", sender: self)
        }else
            if txtUser?.text == "yoni" && txtPass?.text == "nose123"{
            self.performSegue(withIdentifier: "SaltoInicio", sender: self)
        }else
            if txtUser?.text == "laura" && txtPass?.text == "jajaxd"{
            self.performSegue(withIdentifier: "SaltoInicio", sender: self)
        }
        
    }
    
}

