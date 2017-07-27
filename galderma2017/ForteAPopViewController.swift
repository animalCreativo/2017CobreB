//
//  ForteAPopViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 30-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteAPopViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    
    @IBOutlet var fondo: SpringImageView!
    
    @IBOutlet var zoom: SpringImageView!
    
    var timer1: Timer!
    var timer2: Timer!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    func animation1() {
        fondo.opacity      = 0.0
        
        fondo.animation    = "flash"
        fondo.curve        = "easeIn"
        fondo.delay        = 0.1
        fondo.duration     = 1.0
        fondo.animate()
    }
    func animation2() {
        
        zoom.opacity      = 0.0
        zoom.animation    = "flash"
        zoom.curve        = "easeIn"
        zoom.delay        = 0.1
        zoom.duration     = 1.2
        zoom.animate()
    }
    func slide(){
       
        fondo.isHidden = true
        zoom.isHidden = true
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
        item2.animation    = "zoomIn"
        item2.curve        = "easeIn"
        item2.delay        = 0.9
        item2.duration     = 0.5
        item2.animate()
        
     
        delay(delay: 1.5){
            self.btnExit.isHidden = false
            self.fondo.isHidden = false
            self.zoom.isHidden = false
            self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)
            self.timer2 = Timer.scheduledTimer(timeInterval: 2.2, target: self, selector: #selector(self.animation2), userInfo: nil, repeats: true)
            
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
