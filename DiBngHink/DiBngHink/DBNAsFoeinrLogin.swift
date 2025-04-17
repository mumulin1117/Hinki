//
//  DBNAsFoeinrLogin.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/17.
//

import UIKit
import SwiftyStoreKit
class DBNAsFoeinrLogin: UIViewController {
    @IBOutlet weak var lootBoxMechanics: UIButton!
    
    @IBOutlet weak var contactDBN: UITextField!
    
    @IBOutlet weak var overfittin: UIButton!
    
    @IBOutlet weak var MappingDBN: UITextField!
    
    @IBOutlet weak var boeinmgPick: UIButton!
    
    @IBOutlet weak var fluidDynamics: UILabel!
    
    var paepmam:UIColor?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if paepmam == nil {
            octreeStructure()
            paepmam = .white
        }
        boeinmgPick.isSelected = UserDefaults.standard.bool(forKey: "haiagerren")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Comabingeyew()
        overfittin.addTarget(self, action: #selector(skinnedMeshes(gahu:)), for: .touchUpInside)
        
    }

    
    func Comabingeyew() {
        jointConstraints()
        aerodynamicModeling()
        fractureMechanics()
        morphTargetBlending()
        emergentBehavior()
    }

    fileprivate func jointConstraints()  {
        lootBoxMechanics.layer.cornerRadius = 10
        fluidDynamics.isUserInteractionEnabled = true
        fluidDynamics.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(octreeStructure)))
    }
    
    fileprivate func aerodynamicModeling()  {
        lootBoxMechanics.layer.masksToBounds = true
    }
    
    fileprivate func fractureMechanics()  {
        contactDBN.attributedPlaceholder = NSAttributedString.init(string: "Enter email adderss", attributes: [.foregroundColor:UIColor.init(white: 1, alpha: 0.8)])
        
        
        lootBoxMechanics.addTarget(self, action: #selector(octreeStructure), for: .touchUpInside)
        
        overfittin.layer.cornerRadius = 12
        
    }
    
    
    fileprivate func morphTargetBlending()  {
      
        MappingDBN.attributedPlaceholder = NSAttributedString.init(string: "Enter password", attributes: [.foregroundColor:UIColor.init(white: 1, alpha: 0.8)])
        
        overfittin.layer.masksToBounds = true
    }
    
    fileprivate func emergentBehavior()  {
        boeinmgPick.addTarget(self, action: #selector(skinnedMeshes(gahu:)), for: .touchUpInside)
    }
    
    
    //ELUA
    @objc func octreeStructure()  {
        self.navigationController?.pushViewController(DBNElauioeinrLogin.init(), animated: true)
    }
    
    
   
    @objc func skinnedMeshes(gahu:UIButton)  {
        
        if gahu == boeinmgPick { //勾选
            boeinmgPick.isSelected = !boeinmgPick.isSelected
            flockingSimulation(result:boeinmgPick.isSelected )
        }
        
        if gahu == overfittin {// log
            
        }
       
    }
    
    
    private func flockingSimulation(result:Bool) {
        UserDefaults.standard.set(result, forKey: "haiagerren")
    }
    
    class func skillBadges(){
        SwiftyStoreKit.completeTransactions(atomically: true) { guCSB in
           
            for purchase in guCSB {
                let astatus = purchase.transaction.transactionState
              
                
                if (astatus ==  .purchased || astatus ==  .restored) {
                    let downloads = purchase.transaction.downloads
                    if !downloads.isEmpty {
                        SwiftyStoreKit.start(downloads)
                       
                    } else if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                }
                
            }
            
            
        }
    }
}
