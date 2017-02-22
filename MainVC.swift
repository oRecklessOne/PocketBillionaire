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
    
    var burgerIps = 128
    var burgerCost = 500
    var networth = 1000
    var totalIps = 128
    var timer = Timer()
    var burgerBought = false
    let formatter = NumberFormatter()
    var IconMenuOpen = false
    
    
    
    
    @IBOutlet weak var investImg: UIButton!
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
    @IBOutlet weak var burgerCostLbl: UILabel!
    @IBOutlet weak var insufficentFundsLbl: UILabel!
    
    @IBOutlet weak var burgerRing: KDCircularProgress!
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scaleAspectFit(image: burgerImg)
        scaleAspectFit(image: clothingImg)
        scaleAspectFit(image: carImg)
        scaleAspectFit(image: airplaneImg)
        scaleAspectFit(image: shoppingImg)
        scaleAspectFit(image: rocketImg)
        
        buyImg.alpha = 0
        managerImg.alpha = 0
        unlocksImg.alpha = 0
        investImg.alpha = 0
        burgerCostLbl.alpha = 0
        currencyTxt(UIImg: burgerCostLbl, storedInt: burgerCost)
    }

  
    
    
    @IBAction func burgerPressed(_ sender: UIButton) {
      
        if IconMenuOpen == false {
        UIView.animate(withDuration: 0.5, animations: {
        
            self.buyImg.alpha = 1
            self.managerImg.alpha = 1
            self.unlocksImg.alpha = 1
            self.investImg.alpha = 1
            self.burgerCostLbl.alpha = 1
            self.IconMenuOpen = true
        })
        
            }else if IconMenuOpen{
            UIView.animate(withDuration: 0.5, animations: {
                self.buyImg.alpha = 0
                self.managerImg.alpha = 0
                self.unlocksImg.alpha = 0
                self.investImg.alpha = 0
                self.burgerCostLbl.alpha = 0
                self.IconMenuOpen = false
            })
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
    
    
    // Menu Buttons
    
    @IBAction func managerPressed(_ sender: UIButton) {
    }
    
    @IBAction func buyPressed(_ sender: UIButton) {
        
        
        if burgerRing.isAnimating() == false{
        burgerRing.animate(fromAngle: 0, toAngle: 360, duration: 6.0) { completed in
            if completed {
                self.networth = self.networth + self.burgerIps
                self.currencyTxt(UIImg: self.networthLbl, storedInt: self.networth)
                self.burgerRing.stopAnimation()
            } else {
                print("animation stopped, was interrupted")
            }
        }
      }
    }
    
    
    @IBAction func unlocksPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func investPressed(_ sender: UIButton) {
        
        if networth > burgerCost {
        networth = networth - burgerCost
        burgerIps = burgerIps + 128
        
        totalIps = totalIps + burgerIps
        
        currencyTxt(UIImg: networthLbl, storedInt: networth)
        
        currencyTxt(UIImg: burgerIpsLbl, storedInt: burgerIps)
        
        burgerCost = burgerCost + 65
        
        currencyTxt(UIImg: burgerCostLbl, storedInt: burgerCost)
        }else{
            insufficentFunds()
        }
    
    }
    
    
    
}









