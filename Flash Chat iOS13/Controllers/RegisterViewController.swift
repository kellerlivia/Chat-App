//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Livia Carvalho Keller on 04/09/22.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        // se o email e senha não forem nulos
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            // realiza a autenticação (criando o usuário)
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    // tipo de erro printado (exemplo: senha menor que 6 caracteres)
                    print(e.localizedDescription)
                } else {
                    // autenticação feita, faz a tranferência para a tela do chat através da segue
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }

        }
    }
    
}
