//
//  SecondViewController.swift
//  JuegoMemoria
//
//  Created by alumnos on 18/11/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

import UIKit

//Creamos los arrays
var imagenes: [UIImage] = [#imageLiteral(resourceName: "donkeykong"), #imageLiteral(resourceName: "goomba"), #imageLiteral(resourceName: "itemmario"), #imageLiteral(resourceName: "link"), #imageLiteral(resourceName: "mario"), #imageLiteral(resourceName: "marioyoshi"), #imageLiteral(resourceName: "yoshi")]
var aleatorio = [Int]()
class SecondViewController: UIViewController {
    
    @IBOutlet weak var numero: UILabel!
    
    @IBOutlet weak var imagenrandom: UIImageView!
    
    @IBOutlet weak var siguiente: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagenesAleatorias()
        vistaImagenes()
        // Do any additional setup after loading the view.
    }
    
    //array donde asignamos un numero a las imagenes y lo desordenamos
    func imagenesAleatorias (){
        var i = 0;
        for (_) in imagenes {
            aleatorio.append(i)
            i+=1
        }
        aleatorio.shuffle()//reordena aleatoriamente el array
    }
    
    func vistaImagenes() {
        var i = 0
        //Tiempo de secuencia con las que salen las imagenes
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true,  block: { timer in
            if i < aleatorio.count{
                self.imagenrandom.image =
                    imagenes[aleatorio[i]]
            self.numero.text = String(i+1)
            }
            i = i+1

        })
    }
} 
