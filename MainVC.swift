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
    var clothingIps = 1543
    var burgerCost = 500
    var networth = 1000
    var totalIps = 128
    var timer = Timer()
    var burgerBought = false
    let formatter = NumberFormatter()
    var IconMenuOpen = false
    
    
    
    
    @IBOutlet weak var scrollView: UIScrollView!
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
    @IBOutlet weak var clothingRing: KDCircularProgress!
    @IBOutlet weak var shoppingRing: KDCircularProgress!
    @IBOutlet weak var carRing: KDCircularProgress!
    @IBOutlet weak var aiplaneRing: KDCircularProgress!
    @IBOutlet weak var rocketRing: KDCircularProgress!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var label: UIView
        for i in 0...5 {
            
            let i = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            i.addSubview(label(i))
        }
        
        
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
        currencyTxt(label: burgerCostLbl, storedInt: burgerCost)
        
        
    
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
 
    @IBAction func shoppingPressed(_ sender: UIButton) {
    }

   
    
    @IBAction func carPressed(_ sender: UIButton) {
    }
    
    
    
    @IBAction func airplanePressed(_ sender: UIButton) {
    }
    
    
    @IBAction func rocketPressed(_ sender: UIButton) {
    }
    
    
    // Menu Buttons
    
    @IBAction func burgermanagerTpd(_ sender: UIButton) {
    }
    
    @IBAction func burgerBuyTpd(_ sender: UIButton) {
        
     buyBtnTpd(ring: burgerRing, Ips: burgerIps)
     
    }
    
    
    @IBAction func burgerunlocksTpd(_ sender: UIButton) {
    }
    
    
    @IBAction func burgerInvestTpd(_ sender: UIButton) {
        
        if networth > burgerCost {
        networth = networth - burgerCost
        burgerIps = burgerIps + 128
            
        
        totalIps = totalIps + burgerIps
        
        currencyTxt(label: networthLbl, storedInt: networth)
        
        currencyTxt(label: burgerIpsLbl, storedInt: burgerIps)
        
        burgerCost = burgerCost + 65
        
        currencyTxt(label: burgerCostLbl, storedInt: burgerCost)
        }else{
            insufficentFunds()
        }
    
    }
    
    @IBAction func clothingManagerTpd(_ sender: UIButton) {
    }
    
    @IBAction func clothingBuyTpd(_ sender: UIButton) {
        buyBtnTpd(ring: clothingRing, Ips: clothingIps)
    }
    
    @IBAction func clothingInvestTpd(_ sender: UIButton) {
    }
    
    @IBAction func clothingUnlocksTpd(_ sender: UIButton) {
    }
    
}









