//
//  DownStateButton.swift
//  Tarea_App_para_crear_una_pizza_desde_iPhone
//
//  Created by Workstation on 24/04/16.
//  Copyright © 2016 Workstation. All rights reserved.
//

import UIKit

class DownStateButton : UIButton {
    
    var myAlternateButton:Array<DownStateButton>?
    
    var downStateImage:String? = "radiobutton_down.png"{
        
        didSet{
            
            if downStateImage != nil {
                
                self.setImage(UIImage(named: downStateImage!), forState: UIControlState.Selected)
            }
        }
    }
    
    func unselectAlternateButtons(){
        
        if myAlternateButton != nil {
            
            self.selected = true
            
            for aButton:DownStateButton in myAlternateButton! {
                
                aButton.selected = false
            }
            
        }else{
            
            toggleButton()
        }
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        unselectAlternateButtons()
        super.touchesBegan(touches as! Set<UITouch>, withEvent: event)
    }
    
    func toggleButton(){
        
        if self.selected==false{
            
            self.selected = true
        }else {
            
            self.selected = false
        }
    }
}
