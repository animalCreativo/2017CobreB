//
//  ForteBPopAViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 30-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteBPopAViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    @IBOutlet var item5: SpringImageView!
    @IBOutlet var item6: SpringImageView!
    @IBOutlet var item7: SpringImageView!
    @IBOutlet var item8: SpringImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 0.4
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "slideUp"
        item2.curve        = "easeIn"
        item2.delay        = 0.9
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "slideUp"
        item3.curve        = "easeIn"
        item3.delay        = 1.2
        item3.duration     = 0.5
        item3.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "slideUp"
        item4.curve        = "easeIn"
        item4.delay        = 1.5
        item4.duration     = 0.5
        item4.animate()
        
        item5.opacity      = 0.0
        item5.animation    = "animalPop"
        item5.curve        = "easeIn"
        item5.delay        = 1.9
        item5.duration     = 0.5
        item5.animate()
        
        item6.opacity      = 0.0
        item6.animation    = "slideUp"
        item6.curve        = "easeIn"
        item6.delay        = 2.3
        item6.duration     = 0.5
        item6.animate()
        
        item7.opacity      = 0.0
        item7.animation    = "slideUp"
        item7.curve        = "easeIn"
        item7.delay        = 2.6
        item7.duration     = 0.5
        item7.animate()
        
        item8.opacity      = 0.0
        item8.animation    = "fadeIn"
        item8.curve        = "easeIn"
        item8.delay        = 3.0
        item8.duration     = 0.5
        item8.animate()
        
        
        delay(delay: 3.5){
            self.btnExit.isHidden = false
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
