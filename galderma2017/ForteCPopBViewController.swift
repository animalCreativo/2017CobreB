//
//  ForteCPopBViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 30-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteCPopBViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    
    @IBOutlet var Right: UISwipeGestureRecognizer!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "zoomIn"
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
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 0.9
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "animalPop"
        item3.curve        = "easeIn"
        item3.delay        = 1.4
        item3.duration     = 0.5
        item3.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "animalPop"
        item4.curve        = "easeIn"
        item4.delay        = 1.9
        item4.duration     = 0.5
        item4.animate()

        view.removeGestureRecognizer(Right)
        
        delay(delay: 2.6){
            self.btnExit.isHidden = false
            self.view.addGestureRecognizer(self.Right)
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
