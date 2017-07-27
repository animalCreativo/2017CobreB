//
//  ForteBPopC3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 01-06-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteBPopC3ViewController: UIViewController {

    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    

    @IBOutlet var img1: SpringImageView!
    
    @IBOutlet var Right: UISwipeGestureRecognizer!
    @IBOutlet var Left: UISwipeGestureRecognizer!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        btnExit.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()

        img1.opacity      = 0.0
        img1.animation    = "zoomIn"
        img1.curve        = "easeIn"
        img1.delay        = 0.7
        img1.duration     = 0.5
        img1.animate()
        
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
