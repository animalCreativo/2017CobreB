//
//  ForteBViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 28-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteBViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var btnItem1: UIButton!
    @IBOutlet weak var btnItem2: UIButton!
    @IBOutlet weak var btnItem3: UIButton!
    @IBOutlet weak var btnItem4: UIButton!
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var item4: SpringImageView!
    
    @IBOutlet var esp1: SpringImageView!
    @IBOutlet var esp2: SpringImageView!
    @IBOutlet var esp3: SpringImageView!
    @IBOutlet var esp4: SpringImageView!
    @IBOutlet var esp5: SpringImageView!
    @IBOutlet var esp6: SpringImageView!
    @IBOutlet var esp7: SpringImageView!
    @IBOutlet var esp8: SpringImageView!
    @IBOutlet var esp9: SpringImageView!
    @IBOutlet var esp10: SpringImageView!
    @IBOutlet var esp11: SpringImageView!
    @IBOutlet var esp12: SpringImageView!
    @IBOutlet var esp13: SpringImageView!
    @IBOutlet var esp14: SpringImageView!
    @IBOutlet var esp15: SpringImageView!

    var timer1: Timer!
    var timer2: Timer!
    
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
    func animation1() {
        img1.opacity      = 0.0
        img1.animation    = "flash"
        img1.curve        = "easeIn"
        img1.delay        = 0.1
        img1.duration     = 1.0
        img1.animate()
    }
    
    func animation2() {
        esp1.opacity      = 0.0
        esp1.animation    = "swing"
        esp1.curve        = "easeIn"
        esp1.delay        = 0.3
        esp1.duration     = 1.0
        esp1.animate()
        
        esp2.opacity      = 0.0
        esp2.animation    = "swing"
        esp2.curve        = "easeIn"
        esp2.delay        = 0.1
        esp2.duration     = 1.0
        esp2.animate()
        
        esp3.opacity      = 0.0
        esp3.animation    = "swing"
        esp3.curve        = "easeIn"
        esp3.delay        = 0.4
        esp3.duration     = 1.0
        esp3.animate()
        
        esp4.opacity      = 0.0
        esp4.animation    = "swing"
        esp4.curve        = "easeIn"
        esp4.delay        = 0.1
        esp4.duration     = 1.0
        esp4.animate()
        
        esp5.opacity      = 0.0
        esp5.animation    = "swing"
        esp5.curve        = "easeIn"
        esp5.delay        = 0.7
        esp5.duration     = 1.0
        esp5.animate()
        
        esp6.opacity      = 0.0
        esp6.animation    = "swing"
        esp6.curve        = "easeIn"
        esp6.delay        = 0.3
        esp6.duration     = 1.0
        esp6.animate()
        
        esp7.opacity      = 0.0
        esp7.animation    = "swing"
        esp7.curve        = "easeIn"
        esp7.delay        = 0.5
        esp7.duration     = 1.0
        esp7.animate()
        
        esp8.opacity      = 0.0
        esp8.animation    = "swing"
        esp8.curve        = "easeIn"
        esp8.delay        = 0.7
        esp8.duration     = 1.0
        esp8.animate()
        
        esp9.opacity      = 0.0
        esp9.animation    = "swing"
        esp9.curve        = "easeIn"
        esp9.delay        = 0.1
        esp9.duration     = 1.0
        esp9.animate()
        
        esp10.opacity      = 0.0
        esp10.animation    = "swing"
        esp10.curve        = "easeIn"
        esp10.delay        = 0.2
        esp10.duration     = 1.0
        esp10.animate()
        
        esp11.opacity      = 0.0
        esp11.animation    = "swing"
        esp11.curve        = "easeIn"
        esp11.delay        = 0.1
        esp11.duration     = 1.0
        esp11.animate()
        
        esp12.opacity      = 0.0
        esp12.animation    = "swing"
        esp12.curve        = "easeIn"
        esp12.delay        = 0.6
        esp12.duration     = 1.0
        esp12.animate()
        
        esp13.opacity      = 0.0
        esp13.animation    = "swing"
        esp13.curve        = "easeIn"
        esp13.delay        = 0.2
        esp13.duration     = 1.0
        esp13.animate()
        
        esp14.opacity      = 0.0
        esp14.animation    = "swing"
        esp14.curve        = "easeIn"
        esp14.delay        = 0.7
        esp14.duration     = 1.0
        esp14.animate()
        
        esp15.opacity      = 0.0
        esp15.animation    = "swing"
        esp15.curve        = "easeIn"
        esp15.delay        = 0.2
        esp15.duration     = 1.0
        esp15.animate()

    }
    
    func slide(){
        
        btn1.isHidden = true
       
        btn4.isHidden = true
        
        btnItem1.isHidden = true
        btnItem2.isHidden = true
        btnItem3.isHidden = true
        btnItem4.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "animalPop"
        img1.curve        = "easeIn"
        img1.delay        = 0.4
        img1.duration     = 0.5
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "animalPop"
        img2.curve        = "easeIn"
        img2.delay        = 0.7
        img2.duration     = 0.5
        img2.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "slideLeft"
        item1.curve        = "easeIn"
        item1.delay        = 1.0
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "slideLeft"
        item2.curve        = "easeIn"
        item2.delay        = 1.3
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "slideLeft"
        item3.curve        = "easeIn"
        item3.delay        = 1.6
        item3.duration     = 0.5
        item3.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "slideLeft"
        item4.curve        = "easeIn"
        item4.delay        = 1.9
        item4.duration     = 0.5
        item4.animate()
        
        
        delay(delay:2.4){
            self.btn1.isHidden = false
      
            self.btn4.isHidden = false
            self.btnItem1.isHidden = false
            self.btnItem2.isHidden = false
            self.btnItem3.isHidden = false
            self.btnItem4.isHidden = false
            
            self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)
            
            self.timer2 = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(self.animation2), userInfo: nil, repeats: true)
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
