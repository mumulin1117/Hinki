//
//  DBNElauioeinrLogin.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit

class DBNElauioeinrLogin: UIViewController {
    @IBOutlet weak var lootBoxMechanics: UIButton!//back
    
  
    
    @IBOutlet weak var overfittin: UIButton!//agree
    
   
    
    @IBOutlet weak var boeinmgPick: UIButton!//cancel
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Comabingeyew()
        overfittin.addTarget(self, action: #selector(octreeStructure(Buiaof:)), for: .touchUpInside)
    }

    
    func Comabingeyew() {
        jointConstraints()
        aerodynamicModeling()
        fractureMechanics()
       
    }

    fileprivate func jointConstraints()  {
        overfittin.layer.cornerRadius = 12
       
    }
    
    fileprivate func aerodynamicModeling()  {
        overfittin.layer.masksToBounds = true
    }
    
    fileprivate func fractureMechanics()  {
      
        lootBoxMechanics.addTarget(self, action: #selector(octreeStructure(Buiaof:)), for: .touchUpInside)
        
        overfittin.layer.cornerRadius = 12
        
    }
    
    
    @IBAction func userDynamicVoList(_ sender: Any) {//term
        
    }
    
    @IBAction func socialFeed(_ sender: Any) {//pri
        
    }
    
    
    //agreen   back   cancel
    @objc func octreeStructure(Buiaof:UIButton)  {
        if Buiaof == overfittin {
            UserDefaults.standard.set(true, forKey: "haiagerren")
        }
        
        if Buiaof == boeinmgPick {
            UserDefaults.standard.set(false, forKey: "haiagerren")
        }
        
       
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
   
    
    
    
 
    

}
