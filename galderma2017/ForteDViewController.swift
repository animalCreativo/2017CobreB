//
//  ForteDViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 30-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteDViewController: UIViewController {
    
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    @IBOutlet var img3: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    @IBOutlet var item5: SpringImageView!
    @IBOutlet var item6: SpringImageView!
    @IBOutlet var item7: SpringImageView!
    
    @IBOutlet var item8: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    
    @IBOutlet weak var btnAlgo: UIButton!
    
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
      
        btn1.isHidden = true
        btnAlgo.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "fadeIn"
        img1.curve        = "easeIn"
        img1.delay        = 0.4
        img1.duration     = 0.5
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "zoomIn"
        img2.curve        = "easeIn"
        img2.delay        = 0.7
        img2.duration     = 0.5
        img2.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "slideUp"
        item1.curve        = "easeIn"
        item1.delay        = 1.0
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "slideUp"
        item2.curve        = "easeIn"
        item2.delay        = 1.3
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "slideUp"
        item3.curve        = "easeIn"
        item3.delay        = 1.6
        item3.duration     = 0.5
        item3.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "slideUp"
        item4.curve        = "easeIn"
        item4.delay        = 1.9
        item4.duration     = 0.5
        item4.animate()
        
        item5.opacity      = 0.0
        item5.animation    = "slideUp"
        item5.curve        = "easeIn"
        item5.delay        = 2.1
        item5.duration     = 0.5
        item5.animate()
        
        item6.opacity      = 0.0
        item6.animation    = "slideUp"
        item6.curve        = "easeIn"
        item6.delay        = 2.4
        item6.duration     = 0.5
        item6.animate()
        
        item7.opacity      = 0.0
        item7.animation    = "slideUp"
        item7.curve        = "easeIn"
        item7.delay        = 2.7
        item7.duration     = 0.5
        item7.animate()
        
        item8.opacity      = 0.0
        item8.animation    = "slideUp"
        item8.curve        = "easeIn"
        item8.delay        = 3.0
        item8.duration     = 0.5
        item8.animate()
        
        img3.opacity      = 0.0
        img3.animation    = "slideLeft"
        img3.curve        = "easeIn"
        img3.delay        = 3.3
        img3.duration     = 0.5
        img3.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "fadeIn"
        footer.curve        = "easeIn"
        footer.delay        = 3.5
        footer.duration     = 0.5
        footer.animate()
        
        
        delay(delay:4.0){
            self.btn2.isHidden = false
            self.btn1.isHidden = false
            self.btnAlgo.isHidden = false
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
