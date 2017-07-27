//
//  ForteCPopCViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 30-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteCPopCViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var Right: UISwipeGestureRecognizer!
    @IBOutlet var Left: UISwipeGestureRecognizer!
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

        view.removeGestureRecognizer(Right)
        view.removeGestureRecognizer(Left)
        
        delay(delay: 1.2){
            self.btnExit.isHidden = false
            self.view.addGestureRecognizer(self.Right)
            self.view.addGestureRecognizer(self.Left)
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
