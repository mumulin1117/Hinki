//
//  DBNAsFoeinrLogin.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit
import SwiftyStoreKit
import Alamofire
import PKHUD
class DBNAsFoeinrLogin: UIViewController {
    @IBOutlet weak var lootBoxMechanics: UIButton!
    
    @IBOutlet weak var contactDBN: UITextField!
    
    @IBOutlet weak var overfittin: UIButton!
    
    @IBOutlet weak var MappingDBN: UITextField!
    
    @IBOutlet weak var boeinmgPick: UIButton!
    
    @IBOutlet weak var fluidDynamics: UILabel!
    
    
    @IBOutlet weak var creatipinLabel: UILabel!
    
    @IBOutlet weak var addlLinder: UILabel!
    
    
    static var paepmam:UIColor?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if DBNAsFoeinrLogin.paepmam == nil {
            octreeStructure()
            DBNAsFoeinrLogin.paepmam = .white
        }
        boeinmgPick.isSelected = UserDefaults.standard.bool(forKey: "haiagerren")
    }
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        lootBoxMechanics.setTitle(self.asFg(evng:"EtLlUoA"), for: .normal)
        Comabingeyew()
        overfittin.addTarget(self, action: #selector(skinnedMeshes(gahu:)), for: .touchUpInside)
        creatipinLabel.text = self.asFg(evng:"Ivfi wtehpec hagcnctocuzngtq qdjogepss cnwootk pesxiiysbtw,j gwyen mwxiulkls kajuetooxmlaktoieckaclllhyz hcbrqelactper iiot")
        
    }

    
    func Comabingeyew() {
        jointConstraints()
        aerodynamicModeling()
        
        addlLinder.text = self.asFg(evng:"Bqyf brlengaiussttekriivnigj,c dywouua faygvrdejeb ttqou ctshceh o<kTgemrmmysp zoifq wUdsdeu>k taknqdn m<vPbrdiqvpaocjyw fPzoqlliqcxyo>j.")
        fractureMechanics()
        morphTargetBlending()
        emergentBehavior()
        
        
    }

    fileprivate func jointConstraints()  {
        overfittin.setTitle(self.asFg(evng:"Ldozgc yian"), for: .normal)
        lootBoxMechanics.layer.cornerRadius = 10
        fluidDynamics.isUserInteractionEnabled = true
        fluidDynamics.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(octreeStructure)))
    }
    
    fileprivate func aerodynamicModeling()  {
        lootBoxMechanics.layer.masksToBounds = true
    }
    
    fileprivate func fractureMechanics()  {
        contactDBN.attributedPlaceholder = NSAttributedString.init(string: self.asFg(evng:"Eznktmesrx aeimrahivlm tatdudqeqrgsls"), attributes: [.foregroundColor:UIColor.init(white: 1, alpha: 0.8)])
        
        
        lootBoxMechanics.addTarget(self, action: #selector(octreeStructure), for: .touchUpInside)
        
        overfittin.layer.cornerRadius = 12
        
    }
    
    
    fileprivate func morphTargetBlending()  {
      
        MappingDBN.attributedPlaceholder = NSAttributedString.init(string: self.asFg(evng:"Eenvtleyre lpraosqsswvotrgd"), attributes: [.foregroundColor:UIColor.init(white: 1, alpha: 0.8)])
        
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
            
            guard let poiu = self.contactDBN.text,poiu.count > 0 else {
                HUD.flash(.labeledError(title: self.asFg(evng:"Pflgesahsbec aefnttzeerm sexmuaqidlk!"), subtitle: nil), delay: 2)
                return
            }
            
            guard let pasiod = self.MappingDBN.text,pasiod.count >= 6 else {
                HUD.flash(.labeledError(title:self.asFg(evng:"Pxlsenaisaek dernvtuetrf xaa optabsystwxohrwdx owiiotwhc dautg xlzegaismte ysgiixe ldfitgfittysw!") , subtitle: nil), delay: 2)
                return
            }
            
            
            self.MappingDBN.resignFirstResponder()
            contactDBN.resignFirstResponder()
            // 1. 创建请求参数
            let parameters: Parameters = [
                "echoCancellation": DBNSeddingTrkop.Judbei.app_qiucklyId,
                "spinningCube": poiu,
                "latencyCompensation": poiu
            ]

            // 2. 显示加载指示器
            HUD.show(.progress)
            DBNSeddingTrkop.Judbei.soluteTogeeting(
                "/gliqjqosvikyz/yrdkpbchsbvy",
                yun_methui: .post,
                adting: parameters,
                ikolLoodergin: true) { data in
                    HUD.hide()
                    guard let response = data as? Dictionary<String,Any> ,
                          let code = response[self.asFg(evng:"ckoxdye")] as? Int,code == 200000,
                          let user = response[self.asFg(evng:"dladtna")] as? Dictionary<String,Any>
                            
                    else {
                        HUD.flash(.labeledError(title: self.asFg(evng:"Duaytpaw qegrqrzofr"), subtitle: nil), delay: 2)
                        return
                    }
                    AppDelegate.loguserMofdal = DBHUs_er(dic: user)
                    ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = DBNAsFore.init()
                    HUD.flash(.labeledSuccess(title: self.asFg(evng:"Liongm kionc fsdudcacdeasoskfpuelg!"), subtitle: nil), delay: 2)
                    
                } fai_DBNlure: { AFError in
                    HUD.flash(.labeledError(title: AFError.errorDescription, subtitle: nil), delay: 2)
                }

           
        }
       
    }
   
    
    
    private func flockingSimulation(result:Bool) {
        UserDefaults.standard.set(result, forKey: "haiagerren")
    }
    
    
    
    
    //MARK: - 支付完成回调
    class func skillBadges(){
        SwiftyStoreKit.completeTransactions(atomically: true) { guCSB in
           
            for purchase in guCSB {
                let astatus = purchase.transaction.transactionState
              
                
                if (astatus ==  .purchased || astatus ==  .restored) {

                    self.volumetricRendering(purchase:purchase)
                    
                    if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                }
                
            }
            
            
        }
    }
    
    
    class func volumetricRendering(purchase:Purchase)  {
        let downloads = purchase.transaction.downloads
        if !downloads.isEmpty {
            SwiftyStoreKit.start(downloads)
        }
    }
}



