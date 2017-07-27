//
//  ForteAViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 28-05-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class ForteAViewController: UIViewController {
    
   
    @IBOutlet var btnAlgo: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn4: UIButton!
    
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
    @IBOutlet var item5: SpringImageView!
    @IBOutlet var item6: SpringImageView!
    @IBOutlet var item7: SpringImageView!
    @IBOutlet var item8: SpringImageView!
    
    @IBOutlet var item21: SpringImageView!
    @IBOutlet var item22: SpringImageView!
    
    @IBOutlet var fondo: SpringImageView!
    
    @IBOutlet var zoom: SpringImageView!
    @IBOutlet var titulo2: SpringImageView!
    
    @IBOutlet var btnItem1: UIButton!
    @IBOutlet var btnItem2: UIButton!
    @IBOutlet var btnItem3: UIButton!
    @IBOutlet var btnItem4: UIButton!
    @IBOutlet var btnItem5: UIButton!
    @IBOutlet var btnItem6: UIButton!
    @IBOutlet var btnItem7: UIButton!
    
    var stateItem1 = false , stateItem2 = false , stateItem3 = false , stateItem4 = false , stateItem5 = false , stateItem6 = false , stateItem7 = false
    
    var timer1: Timer!
    var timer2: Timer!
    
    var stateResult = false

    
    @IBAction func btnItem1(_ sender: Any) {
        if stateItem1 {
            item1.image = UIImage(named: "Qitem21")
            stateItem1 = false
        }else {
            item1.image = UIImage(named: "Qitem11")
            stateItem1 = true
        }
    }
    
    @IBAction func btnItem2(_ sender: Any) {
        if stateItem2 {
            item2.image = UIImage(named: "Qitem22")
            stateItem2 = false
        }else {
            item2.image = UIImage(named: "Qitem12")
            stateItem2 = true
        }
    }
    
    @IBAction func btnItem3(_ sender: Any) {
        if stateItem3 {
            item3.image = UIImage(named: "Qitem23")
            stateItem3 = false
        }else {
            item3.image = UIImage(named: "Qitem13")
            stateItem3 = true
        }
    }
    
    @IBAction func btnItem4(_ sender: Any) {
        if stateItem4 {
            item4.image = UIImage(named: "Qitem24")
            stateItem4 = false
        }else {
            item4.image = UIImage(named: "Qitem14")
            stateItem4 = true
        }
    }
    

    @IBAction func btnItem5(_ sender: Any) {
        if stateItem5 {
            item5.image = UIImage(named: "Qitem25")
            stateItem5 = false
        }else {
            item5.image = UIImage(named: "Qitem15")
            stateItem5 = true
        }
    }
    
    @IBAction func btnItem6(_ sender: Any) {
        if stateItem6 {
            item6.image = UIImage(named: "Qitem26")
            stateItem6 = false
        }else {
            item6.image = UIImage(named: "Qitem16")
            stateItem6 = true
        }
    }
    
    @IBAction func btnItem7(_ sender: Any) {
        if stateItem7 {
            item7.image = UIImage(named: "Qitem27")
            stateItem7 = false
        }else {
            item7.image = UIImage(named: "Qitem17")
            stateItem7 = true
        }
    }
    
    @IBAction func resultado(_ sender: Any) {
        
        if stateResult == false {
            
            slide2()
            if stateItem1 {
                item1.image = UIImage(named: "Qitem31")
            }else {
                item1.image = UIImage(named: "Qitem41")
            }
            
            if stateItem2 {
                item2.image = UIImage(named: "Qitem32")
            }else {
                item2.image = UIImage(named: "Qitem42")
            }
            
            if stateItem3 {
                item3.image = UIImage(named: "Qitem33")
            }else {
                item3.image = UIImage(named: "Qitem43")
            }
            
            if stateItem4 {
                item4.image = UIImage(named: "Qitem34")
            }else {
                item4.image = UIImage(named: "Qitem44")
            }
            
            if stateItem5 {
                item5.image = UIImage(named: "Qitem35")
            }else {
                item5.image = UIImage(named: "Qitem45")
            }
            
            if stateItem6 {
                item6.image = UIImage(named: "Qitem36")
            }else {
                item6.image = UIImage(named: "Qitem46")
            }
            
            if stateItem7 {
                item7.image = UIImage(named: "Qitem37")
            }else {
                item7.image = UIImage(named: "Qitem47")
            }
            
            btnItem1.isHidden = true
            btnItem2.isHidden = true
            btnItem3.isHidden = true
            btnItem4.isHidden = true
            btnItem5.isHidden = true
            btnItem6.isHidden = true
            btnItem7.isHidden = true

            
            stateResult = true
        }else {
            
            item1.image = UIImage(named: "Qitem21")
            stateItem1 = false
            
            item2.image = UIImage(named: "Qitem22")
            stateItem2 = false
            
            item3.image = UIImage(named: "Qitem23")
            stateItem3 = false
            
            item4.image = UIImage(named: "Qitem24")
            stateItem4 = false
            
            item5.image = UIImage(named: "Qitem25")
            stateItem5 = false
            
            item6.image = UIImage(named: "Qitem26")
            stateItem6 = false
            
            item7.image = UIImage(named: "Qitem27")
            stateItem7 = false
            
            btnItem1.isHidden = false
            btnItem2.isHidden = false
            btnItem3.isHidden = false
            btnItem4.isHidden = false
            btnItem5.isHidden = false
            btnItem6.isHidden = false
            btnItem7.isHidden = false
            
            stateResult = false
            
        }
        
    }
    
    
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
    
    
    func slide2(){
    
        img1.isHidden = true
        img2.isHidden = true
        titulo.isHidden = true
        
        titulo2.isHidden = false
        
        item21.isHidden = false
        item22.isHidden = false
        fondo.isHidden = true
        zoom.isHidden = true
        
      
        titulo2.opacity      = 0.0
        titulo2.animation    = "fadeIn"
        titulo2.curve        = "easeIn"
        titulo2.delay        = 0.1
        titulo2.duration     = 0.5
        titulo2.animate()
        
        item21.opacity      = 0.0
        item21.animation    = "fadeIn"
        item21.curve        = "easeIn"
        item21.delay        = 0.3
        item21.duration     = 0.3
        item21.animate()
        
        item22.opacity      = 0.0
        item22.animation    = "fadeIn"
        item22.curve        = "easeIn"
        item22.delay        = 0.4
        item22.duration     = 0.3
        item22.animate()
        
        delay(delay: 1.0){

            self.fondo.isHidden = false
            self.zoom.isHidden = false
            self.timer1 = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.animation1), userInfo: nil, repeats: true)
            self.timer2 = Timer.scheduledTimer(timeInterval: 2.2, target: self, selector: #selector(self.animation2), userInfo: nil, repeats: true)
            
        }
        
        
    }
    
    func slide(){
        
        item21.isHidden = true
        item22.isHidden = true
        fondo.isHidden = true
        zoom.isHidden = true
        titulo2.isHidden = true
        
        btnItem1.isHidden = true
        btnItem2.isHidden = true
        btnItem3.isHidden = true
        btnItem4.isHidden = true
        btnItem5.isHidden = true
        btnItem6.isHidden = true
        btnItem7.isHidden = true
        
        btn2.isHidden = true
        
        btn4.isHidden = true
        btnAlgo.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "slideRight"
        img1.curve        = "easeIn"
        img1.delay        = 0.4
        img1.duration     = 0.5
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "slideLeft"
        img2.curve        = "easeIn"
        img2.delay        = 0.7
        img2.duration     = 0.5
        img2.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 1.0
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 1.3
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "animalPop"
        item3.curve        = "easeIn"
        item3.delay        = 1.6
        item3.duration     = 0.5
        item3.animate()
        
        item4.opacity      = 0.0
        item4.animation    = "animalPop"
        item4.curve        = "easeIn"
        item4.delay        = 1.9
        item4.duration     = 0.5
        item4.animate()
        
        item5.opacity      = 0.0
        item5.animation    = "animalPop"
        item5.curve        = "easeIn"
        item5.delay        = 2.1
        item5.duration     = 0.5
        item5.animate()
        
        item6.opacity      = 0.0
        item6.animation    = "animalPop"
        item6.curve        = "easeIn"
        item6.delay        = 2.4
        item6.duration     = 0.5
        item6.animate()
        
        item7.opacity      = 0.0
        item7.animation    = "animalPop"
        item7.curve        = "easeIn"
        item7.delay        = 2.7
        item7.duration     = 0.5
        item7.animate()
        
        item8.opacity      = 0.0
        item8.animation    = "animalPop"
        item8.curve        = "easeIn"
        item8.delay        = 3.0
        item8.duration     = 0.5
        item8.animate()
        
        delay(delay:3.5){
            self.btn2.isHidden = false
            self.btn4.isHidden = false
            self.btnAlgo.isHidden = false
            self.btnItem1.isHidden = false
            self.btnItem2.isHidden = false
            self.btnItem3.isHidden = false
            self.btnItem4.isHidden = false
            self.btnItem5.isHidden = false
            self.btnItem6.isHidden = false
            self.btnItem7.isHidden = false
            
        }
    }

    func slide1(){
        
        item21.isHidden = true
        item22.isHidden = true
        fondo.isHidden = true
        zoom.isHidden = true
        titulo2.isHidden = true
       
      

        btn2.isHidden = true
   
        btn4.isHidden = true
        btnAlgo.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "slideRight"
        img1.curve        = "easeIn"
        img1.delay        = 0.4
        img1.duration     = 0.5
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "slideLeft"
        img2.curve        = "easeIn"
        img2.delay        = 0.7
        img2.duration     = 0.5
        img2.animate()
        
        delay(delay:1.5){
            self.btn2.isHidden = false
            self.btn4.isHidden = false
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
