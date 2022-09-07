//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Livia Carvalho Keller on 04/09/22.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        // se o email e senha não forem nulos
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            // realiza a autenticação (fazendo o login)
            Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
                if let e = error {
                    // tipo de erro printado
                    print(e.localizedDescription)
                } else {
                    // autenticação feita, faz a tranferência para a tela do chat através da segue
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
}
