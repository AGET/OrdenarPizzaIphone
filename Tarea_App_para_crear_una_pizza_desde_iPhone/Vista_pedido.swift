//
//  Vista_pedido.swift
//  Tarea_App_para_crear_una_pizza_desde_iPhone
//
//  Created by Workstation on 24/04/16.
//  Copyright © 2016 Workstation. All rights reserved.
//

import UIKit

class Vista_pedido: UIViewController {
    
    var tama_no=""
    var masa=""
    var queso=""
    var listaIngredientes=[String:String]()
    var ingredientes=""
    
    @IBOutlet weak var pedido: UITextView!
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var btnNuevaOrden: UIButton!
    @IBOutlet weak var btnCancelar: UIButton!
    @IBOutlet weak var btnAceptar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.imagen.image = UIImage(named: "pizza")
        
        for(key,value) in listaIngredientes{
            ingredientes += "\(value)\n"
            print("Clave: \(key) Valor:\(value)")
        }
        
        self.pedido.text = "\nTamaño - \(tama_no)  \nTipo de masa - \(masa) \nTipo de queso - \(queso) \nIngredientes: \n \(ingredientes)"
    }
    
    @IBAction func aceptar_pedido(sender: AnyObject) {
        
        if tama_no.isEmpty  {
            mostrarMensajeSimple("Incompleto", message:"Usted no ha seleccionado el tamaño", owner: self)
            print("tamano")
        }else if masa.isEmpty{
            
            mostrarMensajeSimple("Incompleto", message:"Usted no ha seleccionado el tipo de masa", owner: self)
            print("masa")
            
        }else  if queso.isEmpty{
            mostrarMensajeSimple("Incompleto", message:"Usted no ha seleccionado el tipo de queso", owner: self)
            print("queso")
        }else if listaIngredientes.count == 0{
            mostrarMensajeSimple("Incompleto", message: "No elijio al menos un ingrediente", owner: self)
            print("ongredientes")
        }else{
            mostrarMensaje("Confirmar", message: "Confirme su pedido", owner: self)
            print("bien")
        }
        print("oprimido")
    }
    
    @IBAction func nuevaOrden(sender: AnyObject) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let lanzarVista = storyBoard.instantiateViewControllerWithIdentifier("idVistaTama_no") as! VistaTama_no
        self.presentViewController(lanzarVista, animated:true, completion:nil)
        
    }
    
    func mostrarMensajeSimple (title: String, message: String, owner:UIViewController) {
        let alerta = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alerta.addAction(UIAlertAction(title: "Entiendo", style: UIAlertActionStyle.Default, handler:{ (ACTION:UIAlertAction!)in
        }))
        self.presentViewController(alerta, animated: true, completion: nil)
    }
    
    func mostrarMensaje (title: String, message: String, owner:UIViewController) {
        let alerta = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.ActionSheet)
        //        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alerta.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.Default, handler:{ (ACTION:UIAlertAction!)in
            self.pedido.text = "Su orden ha sido enviada"
            self.btnAceptar.hidden = true
            self.btnCancelar.hidden = true
            self.btnNuevaOrden.hidden = false
        }))
        
        alerta.addAction(UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.Cancel, handler:{ (ACTION:UIAlertAction!)in
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let lanzarVista = storyBoard.instantiateViewControllerWithIdentifier("idViewController") as! ViewController
            self.presentViewController(lanzarVista, animated:true, completion:nil)
            
        }))
        self.presentViewController(alerta, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
