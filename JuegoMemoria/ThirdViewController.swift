//
//  ThirdViewController.swift
//  JuegoMemoria
//
//  Created by alumnos on 18/11/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var coleccionImagenes: UICollectionView!

    @IBOutlet weak var texto: UILabel!

    var intentos = 0
    
    //Con esto repetimos el juego volviendo a la pantalla principal
    @IBAction func repeatGameViewSegue(_ sender: AnyObject) {
        
        print("Button pressed")
        self.performSegue(withIdentifier: "FirstViewSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coleccionImagenes.dataSource = self
        coleccionImagenes.delegate = self
        // Do any additional setup after loading the view.
    }
   
    //Asignamos el numero de imagenes que tendrá el collection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagenes.count
    }
    
    //Añadimos las imagenes según su orden dentro del array
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cel = collectionView.dequeueReusableCell(withReuseIdentifier: "ImagenColeccion", for: indexPath) as! ImagenColeccion
        cel.imagendecoleccion.image = imagenes[indexPath.row]
        return cel
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let imagencuadricula = collectionView.cellForItem(at: indexPath)  as! ImagenColeccion//Devuelve el objeto de celda visible en la ruta de índice especificada
        
        //comprobamos si el usuario hizo click a la foto en el mismo orden que el array desordenado
        if aleatorio.count != 0{
            if aleatorio[0] == indexPath.row {//Con esto detectamos cuando un usuario toca la celda
                imagencuadricula.isHidden = true
                aleatorio.remove(at: 0)
            }else{
                //
                intentos+=1
                texto.text = String(intentos)
            }
        }        
    }
}
