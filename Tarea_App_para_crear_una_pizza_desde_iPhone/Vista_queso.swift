//
//  Vista_queso.swift
//  Tarea_App_para_crear_una_pizza_desde_iPhone
//
//  Created by Workstation on 24/04/16.
//  Copyright © 2016 Workstation. All rights reserved.
//

import UIKit

class Vista_queso: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    
    var tama_no = ""
    var masa = ""
    
    var tipo_queso=["mozarela","cheddar","parmesano","sin queso"]
    var queso = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
    }
    
    @IBAction func next(sender: AnyObject) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Vista_seleccion_ingredientes
        sigVista.tama_no = tama_no
        sigVista.masa = masa
        sigVista.queso = queso
    }
    
    
    //******************
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return tipo_queso.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        //queso = tipo_queso[row]
        return tipo_queso[row]
    }
    func pickerView(PickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if row == 0{
            self.view.backgroundColor = UIColor.whiteColor()
        }else if row == 1{
            self.view.backgroundColor = UIColor.redColor()
            
            self.view.backgroundColor = UIColor.whiteColor()
        }else if row == 2{
            self.view.backgroundColor = UIColor.greenColor()
            
            self.view.backgroundColor = UIColor.whiteColor()
        }else{
            self.view.backgroundColor = UIColor.blueColor()
            
            self.view.backgroundColor = UIColor.whiteColor()
        }
        queso = tipo_queso[row]
    }
    
    //******************
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
