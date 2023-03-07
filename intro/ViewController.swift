//
//  ViewController.swift
//  intro
//
//  Created by ISSC_611_2023 on 22/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var entrada: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
    }

    @IBAction func onClick(_ sender: UIButton) {
        nombre.text = "Voy a sacar 10"
        
        //boton.isEnabled = false
        print(entrada.text ?? "Sin valor")
        entrada.text = ""
    }
    
}

