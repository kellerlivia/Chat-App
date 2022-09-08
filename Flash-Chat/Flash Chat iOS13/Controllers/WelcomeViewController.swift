//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Livia Carvalho Keller on 04/09/22.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //iniciando a Label do titulo vazia
        titleLabel.text = ""
        //variavel para controlar o index das letras
        var charIndex = 0.0
        //variavel para amarzenar o title
        let titleText = K.appName
        //for para percorrer cada letra
        for letter in titleText {
            //temporizador para cada letra aparecer em um intervalo de tempo, nao repetir(só aparecer na primeira vez)
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                //acrescentando a letra do index no title
                self.titleLabel.text?.append(letter)
            }
            //chamando o próximo index
            charIndex += 1
        }
    }
    

}
