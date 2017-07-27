//
//  CetaphilSlide4ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 27-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class CetaphilSlide4ViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var smile: SpringImageView!
    @IBOutlet var producto: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn5: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.revealViewController().rightViewRevealWidth        = 268.0
            self.revealViewController().rightViewRevealOverdraw     = 0.0
            self.revealViewController().bounceBackOnOverdraw        = false
            self.revealViewController().springDampingRatio          = 1.0
            self.revealViewController().toggleAnimationDuration     = 0.7
            self.revealViewController().frontViewShadowRadius       = 10
            self.revealViewController().frontViewShadowOffset       = CGSize(width: 0, height: 2.5)
            self.revealViewController().frontViewShadowOpacity      = 1.0
            self.revealViewController().frontViewShadowColor        = UIColor.black
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        btn1.isHidden = true
        btn2.isHidden = true
        btn3.isHidden = true
        btn5.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        smile.opacity      = 0.0
        smile.animation    = "fadeIn"
        smile.curve        = "easeIn"
        smile.delay        = 0.4
        smile.duration     = 0.5
        smile.animate()

        producto.opacity      = 0.0
        producto.animation    = "animalPop"
        producto.curve        = "easeIn"
        producto.delay        = 0.9
        producto.duration     = 0.5
        producto.animate()
 
        item1.opacity      = 0.0
        item1.animation    = "slideRight"
        item1.curve        = "easeIn"
        item1.delay        = 1.4
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "slideLeft"
        item2.curve        = "easeIn"
        item2.delay        = 1.8
        item2.duration     = 0.5
        item2.animate()
        
        delay(delay:2.3){
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            self.btn5.isHidden = false
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
         if segue.identifier == "play" {
         let nextScene =  segue.destinationViewController as! DaylongSun00ViewController
         // Pass the selected object to the new view controller.
         nextScene.video = "play"
         }
         */
        
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
