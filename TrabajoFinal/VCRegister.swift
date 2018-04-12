//
//  VCRegister.swift
//  TrabajoFinal
//
//  Created by GUILLERMO CRESPO AGUAYO on 12/4/18.
//  Copyright © 2018 Miguel Angel Martinez Gonzalez. All rights reserved.
//

import UIKit
import CoreData
import FirebaseAuth
class VCRegister: UIViewController {
    
    @IBOutlet var txtUser:UITextField?
    @IBOutlet  var txtEmail:UITextField?
    @IBOutlet var txtPass:UITextField?
    @IBOutlet var txtPassConfirm:UITextField?
    @IBOutlet var btnRegister:UIButton?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   @IBAction func clickRegistar(){
        Auth.auth().createUser(withEmail:(txtEmail?.text)!,password:(txtPass?.text)!){ (user, error) in
            if user != nil{
                print("TE REGISTRARSE")
                DataHolder.sharedInstance.fireStoreDB?.collection("Perfiles").document((user?.uid)!).setData([
                    "nombre": self.txtUser?.text! as Any,
                    "email": self.txtEmail?.text as Any,
                    "contrasena": self.txtPass?.text as Any
                    
                    ])
            }
            else{
                print(error!)
            }
        }
        print("Hola!!!")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
