//
//  ViewController.swift
//  Tarea_App_para_crear_una_pizza_desde_iPhone
//
//  Created by Workstation on 23/04/16.
//  Copyright © 2016 Workstation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var bienvenido: UILabel!
    
    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view, typically from a nib.
        
        titulo.font = UIFont (name: "HelveticaNeue-UltraLight", size: 20)
        
        titulo.textAlignment = .Center
        
        bienvenido.font = UIFont (name: "HelveticaNeue-UltraLight", size: 20)
        self.imagen.image = UIImage(named: "pizza")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

