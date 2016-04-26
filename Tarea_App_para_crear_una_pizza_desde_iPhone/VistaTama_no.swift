//
//  VistaTama_no.swift
//  Tarea_App_para_crear_una_pizza_desde_iPhone
//
//  Created by Workstation on 24/04/16.
//  Copyright © 2016 Workstation. All rights reserved.
//

import UIKit

class VistaTama_no: UIViewController, UIPickerViewDataSource,  UIPickerViewDelegate {
    
    var tama_no = ""
    
    var tipos_tama_no = ["Chica","Mediana","Grande"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Vista_masa
        sigVista.tama_no = tama_no
    }
    
    //******************
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return tipos_tama_no.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        print("selecciono: \(tipos_tama_no[row]) y \(component)")
        //tama_no=tipos_tama_no[row]
        return tipos_tama_no[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.whiteColor();
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.redColor();
            
            self.view.backgroundColor = UIColor.whiteColor()
        }
        else if(row == 2)
        {
            self.view.backgroundColor =  UIColor.greenColor();
            
            self.view.backgroundColor = UIColor.whiteColor()
        }
        else
        {
            self.view.backgroundColor = UIColor.blueColor();
            
            self.view.backgroundColor = UIColor.whiteColor()
        }
        
        tama_no = tipos_tama_no[row]
        
        print("tambien selecciono: \(tipos_tama_no[row])")
        
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
