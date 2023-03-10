//
//  ViewController4.swift
//  intro
//
//  Created by ISSC_611_2023 on 27/02/23.
//

import UIKit

class ViewController4: UIViewController {
    
    
    @IBOutlet weak var txtLifes: UILabel!
    @IBOutlet weak var txtScore: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var txtn1: UILabel!
    @IBOutlet weak var txtn2: UILabel!

    
    @IBOutlet weak var txtRes: UILabel!
    @IBOutlet weak var txtOperador: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var score = 0
           var vidas = 3
    var res = 0
    override func viewDidLoad() {
     
       cambiar()
       
    }
    

    @IBAction func comprobar(_ sender: UIButton) {
        
       
            if(sender.currentTitle == String(res)){
                score += 1
                txtScore.text = "Score: " + String(score)
            }
            else{
                vidas -= 1
                txtLifes.text = "Vidas: " +  String(vidas)
            }
            
            cambiar()
       
        
        }
    
    func cambiar(){
        
        if(score >= 10){
            btn1.isEnabled = false
            btn2.isEnabled = false
            btn3.isEnabled = false
            txtRes.text = "Ganaste"
            img.image = UIImage(named: "ganaste.jpg")
            
        }
        if(vidas == 0){
            btn1.isEnabled = false
            btn2.isEnabled = false
            btn3.isEnabled = false
            txtRes.text = "Has perdido"
            img.image = UIImage(named: "gameOver")
        }
        
        
        var a = Int.random(in: 1...100)
        var b = Int.random(in: 1...100)
        var operadores = ["+","-","*","/"]
        var op = operadores[Int.random(in: 0...3)]
        
        
        
        txtn1.text = String(a)
        txtn2.text = String(b)
        txtOperador.text = String(op)
        
         res = calcular(a: a, b: op, c: b)
        
        
        var resultados = [res,Int.random(in: 1...100), Int.random(in: 1...100)]
        
        var indice = Int.random(in: 0...2)
        var boton1 = String(resultados[indice])
        resultados.remove(at: indice)
        
         indice = Int.random(in: 0...1)
        var boton2 = String(resultados[indice])
        resultados.remove(at: indice)
        
         indice = Int.random(in: 0...0)
        var boton3 = String(resultados[indice])
        resultados.remove(at: indice)
        
        
        
        btn1.setTitle(boton1, for: .normal)
        btn2.setTitle(boton2, for: .normal)
        btn3.setTitle(boton3, for: .normal)
        
       
          
      }

    func calcular(a:Int, b:String, c:Int)-> Int{
          var operacion:Int = 0
          switch (b){
          case "+":
              operacion = a + c
              break
          case "-":
              operacion = a - c
              break
          case "*":
              operacion = a * c
              break
          case "/":
              operacion = a / c
              break
          default:
              print("Error")
              
          }
          return operacion
      }
    
    }
    
  

  
    
   
    


