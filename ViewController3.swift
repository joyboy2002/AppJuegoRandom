//
//  ViewController3.swift
//  intro
//
//  Created by ISSC_611_2023 on 22/02/23.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var txtRes: UILabel!
    

    // MARK: - Navigation

     @IBAction func calcular(_ sender: UIButton) {
         let t1:Double = Double(txt1.text!) ?? 0.0
         let t2:Double = Double(txt2.text!) ?? 0.0
         
         let res = suma(t1, t2)
         
         txtRes.text = String(res)
     }
    
    func suma(_ a:Double, _ b:Double) ->Double {
        
        return a + b
    }
    /*
           // In a storyboard-based application, you will often want to do a little preparation before navigation
     @IBAction func calcular(_ sender: UIButton) {
     }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
