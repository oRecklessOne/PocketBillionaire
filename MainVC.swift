//
//  ViewController.swift
//  PocketBillionaire
//
//  Created by oliver drabble on 09/02/2017.
//  Copyright © 2017 TheAppSquad. All rights reserved.
//

import Foundation
import UIKit

class MainVC: UIViewController {
    
    var burgerIps = 0
    var networth = 1000
    var totalIps = 0
    var timer = Timer()
    var burgerBought = false
    let formatter = NumberFormatter()
    
    
    @IBOutlet weak var allIconStack: UIStackView!
    @IBOutlet weak var buyImg: UIButton!
    @IBOutlet weak var managerImg: UIButton!
    @IBOutlet weak var unlocksImg: UIButton!
    @IBOutlet weak var burgerImg: UIButton!
    @IBOutlet weak var airplaneImg: UIButton!
    @IBOutlet weak var carImg: UIButton!
    @IBOutlet weak var shoppingImg: UIButton!
    @IBOutlet weak var clothingImg: UIButton!
    @IBOutlet weak var rocketImg: UIButton!
    
    @IBOutlet weak var burgerIpsLbl: UILabel!
    @IBOutlet weak var networthLbl: UILabel!
    
    @IBOutlet weak var burgerRing: KDCircularProgress!
  
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scaleAspectFit(image: burgerImg)
        scaleAspectFit(image: clothingImg)
        scaleAspectFit(image: carImg)
        scaleAspectFit(image: airplaneImg)
        scaleAspectFit(image: shoppingImg)
        scaleAspectFit(image: rocketImg)
        
    }

    func scaleAspectFit (image: UIButton!) {
        image.imageView?.contentMode = UIViewContentMode.scaleAspectFit
    }
    
        
    
    @IBAction func burgerPressed(_ sender: UIButton) {
        
        // code for animating menu button, needs work!!!!
        UIView.animate(withDuration: 0.5, animations: {
        self.managerImg.imageView?.center.x = (self.managerImg.imageView?.center.x)!+68
            self.buyImg.imageView?.center.y = (self.buyImg.imageView?.center.y)!-68
            self.unlocksImg.imageView?.center.x = (self.unlocksImg.imageView?.center.x)!-68
        })
        
        
        if burgerBought == false {
        networth = networth - 1000
            burgerBought = true
        }
        
        formatter.numberStyle = .currencyAccounting
        networthLbl.text = "\(networth)"
        burgerIps = burgerIps + 129685
        burgerIpsLbl.text = "\(formatter.string(for: burgerIps)!)"
        totalIps = totalIps + burgerIps
        burgerRing.animate(fromAngle: 0, toAngle: 360, duration: 8.0) { completed in
            if completed {
                self.networth = self.networth + self.burgerIps
                self.networthLbl.text = "\(self.networth)"
            } else {
                print("animation stopped, was interrupted")
            }
         }
        
    }

    
    
    @IBAction func clothingPressed(_ sender: UIButton) {
    }

 
    @IBAction func shoppingPressed(_ sender: UIButton) {
    }

   
    
    @IBAction func carPressed(_ sender: UIButton) {
    }
    
    
    
    @IBAction func airplanePressed(_ sender: UIButton) {
    }
    
    
    @IBAction func rocketPressed(_ sender: UIButton) {
    }
    
    
    
    
   
}









