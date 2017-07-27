//
//  TetraHomeAViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 27-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class TetraHomeAViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    @IBOutlet var footer1: SpringImageView!
    @IBOutlet var footer2: SpringImageView!
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    @IBOutlet var img3: SpringImageView!

    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!

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

        btn2.isHidden = true
        btn3.isHidden = true
  
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        texto1.opacity      = 0.0
        texto1.animation    = "fadeIn"
        texto1.curve        = "easeIn"
        texto1.delay        = 0.4
        texto1.duration     = 0.5
        texto1.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "fadeIn"
        texto2.curve        = "easeIn"
        texto2.delay        = 0.9
        texto2.duration     = 0.5
        texto2.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "animalPop"
        img1.curve        = "easeIn"
        img1.delay        = 1.4
        img1.duration     = 0.5
        img1.animate()
        
        
        img2.opacity      = 0.0
        img2.animation    = "animalPop"
        img2.curve        = "easeIn"
        img2.delay        = 1.9
        img2.duration     = 0.5
        img2.animate()
        
        
        img3.opacity      = 0.0
        img3.animation    = "animalPop"
        img3.curve        = "easeIn"
        img3.delay        = 2.4
        img3.duration     = 0.5
        img3.animate()
        
        footer1.opacity      = 0.0
        footer1.animation    = "slideUp"
        footer1.curve        = "easeIn"
        footer1.delay        = 2.6
        footer1.duration     = 0.5
        footer1.animate()
        
        footer2.opacity      = 0.0
        footer2.animation    = "slideUp"
        footer2.curve        = "easeIn"
        footer2.delay        = 2.9
        footer2.duration     = 0.5
        footer2.animate()
        
        delay(delay:3.5){
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            
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
