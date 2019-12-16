//
//  ViewController.swift
//  JuegoMemoria
//
//  Created by alumnos on 18/11/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBAction func nextViewButton(_ sender: AnyObject) {
        
        print("Button pressed")
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
