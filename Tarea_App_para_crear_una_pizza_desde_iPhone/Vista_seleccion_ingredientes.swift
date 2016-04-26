//
//  Vista_seleccion_ingredientes.swift
//  Tarea_App_para_crear_una_pizza_desde_iPhone
//
//  Created by Workstation on 25/04/16.
//  Copyright © 2016 Workstation. All rights reserved.
//

import UIKit

class Vista_seleccion_ingredientes: UIViewController {
    
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var peperoni: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var pi_na: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    @IBOutlet weak var otros: UISwitch!
    
    
    var tama_no=""
    var masa=""
    var queso=""
    
    var ingredientes = ""
    var diccionarioIngredientes =  [String : String] ()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        inicio()
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Vista_pedido
        
        sigVista.tama_no = tama_no
        sigVista.masa=masa
        sigVista.queso=queso
        sigVista.listaIngredientes=diccionarioIngredientes
    }
    
    func inicio(){
        jamon.setOn(false, animated:true)
        peperoni.setOn(false, animated:true)
        pavo.setOn(false, animated:true)
        salchicha.setOn(false, animated:true)
        aceituna.setOn(false, animated:true)
        cebolla.setOn(false, animated:true)
        pimiento.setOn(false, animated:true)
        pi_na.setOn(false, animated:true)
        anchoa.setOn(false, animated:true)
        otros.setOn(false, animated:true)
    }
    
    func disponibles() -> Bool {
        if diccionarioIngredientes.count < 5 {
            return true
        }else {
            return false
        }
    }
    
    
    @IBAction func UISJamon(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["jamon"] = "Jamon"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["jamon"] = nil
            dump(diccionarioIngredientes)
        }
    }
    @IBAction func UISPeperoni(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["peperoni"] = "Peperoni"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["peperoni"] = nil
            dump(diccionarioIngredientes)
        }
    }
    @IBAction func UISPavo(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["pavo"] = "Pavo"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["pavo"] = nil
            dump(diccionarioIngredientes)
        }
    }
    @IBAction func UISSalchicha(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["salchicha"] = "Salchicha"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["salchicha"] = nil
            dump(diccionarioIngredientes)
        }
    }
    @IBAction func UISAceituna(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["aceituna"] = "Aceituna"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["aceituna"] = nil
            dump(diccionarioIngredientes)
        }
    }
    @IBAction func UISCebolla(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["cebolla"] = "Cebolla"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["cebolla"] = nil
            dump(diccionarioIngredientes)
        }
    }
    @IBAction func UISPimiento(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["pimiento"] = "Pimiento"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["pimiento"] = nil
            dump(diccionarioIngredientes)
        }
    }
    @IBAction func UISPi_na(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["pi_na"] = "Piña"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["pi_na"] = nil
            dump(diccionarioIngredientes)
        }
    }
    @IBAction func UISAnchoa(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["anchoa"] = "Anchoa"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["anchoa"] = nil
            dump(diccionarioIngredientes)
        }
    }
    @IBAction func UISOtros(sender: UISwitch) {
        if sender.on{
            if disponibles(){
                diccionarioIngredientes["otros"] = "Otros"
                dump(diccionarioIngredientes)
            }else{
                sender.setOn(false, animated: true)
            }
        }else{
            diccionarioIngredientes["otros"] = nil
            dump(diccionarioIngredientes)
        }
    }
    
    @IBAction func next(sender: AnyObject) {
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
