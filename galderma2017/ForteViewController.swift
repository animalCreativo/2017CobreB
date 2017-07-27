//
//  ForteViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 30-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteViewController: UIViewController {
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
   
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var img: SpringImageView!
    
    @IBOutlet var imgBtn1: SpringImageView!
    @IBOutlet var imgBtn2: SpringImageView!
   
    @IBOutlet var imgBtn4: SpringImageView!
    
    @IBOutlet var lbl1: SpringImageView!
    @IBOutlet var lbl2: SpringImageView!
    
    @IBOutlet var lbl4: SpringImageView!
    
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
    @IBOutlet var esp16: SpringImageView!
    @IBOutlet var esp17: SpringImageView!

    var timer2: Timer!
    var timer1: Timer!
    
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
        img.opacity      = 0.0
        img.animation    = "flash"
        img.curve        = "easeIn"
        img.delay        = 0.1
        img.duration     = 1.0
        img.animate()
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
        esp8.animation    = "flash"
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
        esp11.animation    = "flash"
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
        btn2.isHidden = true
       
        btn4.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "fadeIn"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img.opacity      = 0.0
        img.animation    = "animalPop"
        img.curve        = "easeIn"
        img.delay        = 0.5
        img.duration     = 0.5
        img.animate()
        
        imgBtn1.opacity      = 0.0
        imgBtn1.animation    = "fadeIn"
        imgBtn1.curve        = "easeIn"
        imgBtn1.delay        = 0.7
        imgBtn1.duration     = 0.4
        imgBtn1.animate()
        
        lbl1.opacity      = 0.0
        lbl1.animation    = "fadeIn"
        lbl1.curve        = "easeIn"
        lbl1.delay        = 0.7
        lbl1.duration     = 0.4
        lbl1.animate()
        
        imgBtn2.opacity      = 0.0
        imgBtn2.animation    = "fadeIn"
        imgBtn2.curve        = "easeIn"
        imgBtn2.delay        = 0.9
        imgBtn2.duration     = 0.4
        imgBtn2.animate()
        
        lbl2.opacity      = 0.0
        lbl2.animation    = "fadeIn"
        lbl2.curve        = "easeIn"
        lbl2.delay        = 0.9
        lbl2.duration     = 0.4
        lbl2.animate()
        
        imgBtn4.opacity      = 0.0
        imgBtn4.animation    = "fadeIn"
        imgBtn4.curve        = "easeIn"
        imgBtn4.delay        = 1.1
        imgBtn4.duration     = 0.4
        imgBtn4.animate()
        
        lbl4.opacity      = 0.0
        lbl4.animation    = "fadeIn"
        lbl4.curve        = "easeIn"
        lbl4.delay        = 1.1
        lbl4.duration     = 0.4
        lbl4.animate()
        
        delay(delay:1.8){
            self.btn1.isHidden = false
            self.btn2.isHidden = false
      
            self.btn4.isHidden = false
            self.timer2 = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(self.animation2), userInfo: nil, repeats: true)
            self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)
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

