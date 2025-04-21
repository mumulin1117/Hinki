//
//  DBNElauioDwuomoeDar.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit
import Alamofire
import PKHUD
import SDWebImage

class DBNElauioDwuomoeDar: DBNNiaufo {

    
    @IBOutlet weak var meassgetFoimg: UIImageView!
    
    @IBOutlet weak var meassgetTiopFoimg: UILabel!
    
    
    @IBOutlet weak var bIughAvator: UIImageView!
    
    
    @IBOutlet weak var DBNEAvator: UIImageView!
    @IBOutlet weak var DBNEIanme: UILabel!
    
    
    @IBOutlet weak var backgroupMe: UIImageView!
    
    @IBOutlet weak var aBTesting: UILabel!//followingcount
    @IBOutlet weak var Mechanics: UILabel!//followers
    @IBOutlet weak var Estimation: UILabel!//friend
    
    @IBAction func userReputation(_ sender: UIButton) {//site
        var forinwer = FrealNetworking.shared.appBaseUrlAVoutWEB + self.asFg(evng:"poawgpeusb/nSiertstmitnjgh/piansdkemxy?")
        
        forinwer = forinwer +  self.asFg(evng:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.asFg(evng:"&lacpxpbItDv=") +  (FrealNetworking.shared.appId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
      
    }
    
    
    @IBAction func ambient(_ sender: UIButton) {//edit
        var forinwer = FrealNetworking.shared.appBaseUrlAVoutWEB + self.asFg(evng:"pqakgiecst/vEwdxihtqDsabtyao/liinsdfexxj?")
        
        forinwer = forinwer +  self.asFg(evng:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.asFg(evng:"&lacpxpbItDv=") +  (FrealNetworking.shared.appId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func userLiastForbuy(_ sender: UIButton) {
        if sender.tag == 10 {
            var forinwer = FrealNetworking.shared.appBaseUrlAVoutWEB + self.asFg(evng:"pqahgveusv/daztytneknatlieoonq/niqnqdwenxo?ityywpgea=a1")
            
            forinwer = forinwer +  self.asFg(evng:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.asFg(evng:"&lacpxpbItDv=") +  (FrealNetworking.shared.appId)
            
           let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if sender.tag == 20 {
            var forinwer = FrealNetworking.shared.appBaseUrlAVoutWEB + self.asFg(evng:"pvavgselsd/zadtntjesnetoicocnn/niunbdyesxp?ltcydpkeo=x3")
            
            forinwer = forinwer +  self.asFg(evng:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.asFg(evng:"&lacpxpbItDv=") +  (FrealNetworking.shared.appId)
            
           let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if sender.tag == 30 {
            var forinwer = FrealNetworking.shared.appBaseUrlAVoutWEB + self.asFg(evng:"pvavgselsd/zadtntjesnetoicocnn/niunbdyesxp?ltcydpkeo=x2")
            
            forinwer = forinwer +  self.asFg(evng:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.asFg(evng:"&lacpxpbItDv=") +  (FrealNetworking.shared.appId)
            
           let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        if sender.tag == 40 {//blance
            var forinwer = FrealNetworking.shared.appBaseUrlAVoutWEB + self.asFg(evng:"poanghemsh/cVpoautcohaedrgCuegnctlebrc/himnidieyxs?")
            
            forinwer = forinwer +  self.asFg(evng:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.asFg(evng:"&lacpxpbItDv=") +  (FrealNetworking.shared.appId)
            
           let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    @IBOutlet weak var oauthAuthentication: UILabel!//blance
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backgroundNoiseCancellation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DBNEAvator.layer.cornerRadius =  47
        DBNEAvator.layer.masksToBounds = true
        
       
    }

    //查询用户信息
    func backgroundNoiseCancellation() {
        //查询用户详情
        let parameters: Parameters = [
           
            "userReputation":AppDelegate.loguserMofdal?.poseEstimation ?? ""
            
        ]
        HUD.show(.progress)
        FrealNetworking.shared.request(
            "/rrecskvpz/tfhqqpe",
            method: .post,
            parameters: parameters,
            isLogin: true) { data in
                HUD.hide()
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response[self.asFg(evng:"ckoxdye")] as? Int,code == 200000,
                      let measgs = response[self.asFg(evng:"dladtna")] as? Dictionary<String,Any>
                        
                else {
                    HUD.flash(.labeledError(title: self.asFg(evng:"Duaytpaw qegrqrzofr"), subtitle: nil), delay: 2)
                    return
                }
                
                
                print(measgs)
                
              let mode =  User(dic: measgs)
                self.reinforcementLearning(ad:mode)
            } failure: { AFError in
                HUD.flash(.labeledError(title: AFError.errorDescription, subtitle: nil), delay: 2)
            }
        
        //查询余额
        
        
        
        FrealNetworking.shared.request(
            "/jpezgbuxzsioz/sksuv",
            method: .post,
            parameters: parameters,
            isLogin: true) { data in
                HUD.hide()
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response[self.asFg(evng:"ckoxdye")] as? Int,code == 200000,
                      let measgs = response[self.asFg(evng:"dladtna")] as? Array<Any>
                        
                else {
//                    HUD.flash(.labeledError(title: self.asFg(evng:"Duaytpaw qegrqrzofr"), subtitle: nil), delay: 2)
                    return
                }
                if measgs.count == 0 {
                    self.oauthAuthentication.text = "0"
                }
                
               

            } failure: { AFError in
                
            }
    }

    
    func reinforcementLearning(ad:User?)  {
        guard let ad = ad  else{
            return
        }
       
     
        
        DBNEIanme.text = ad.skillBadges ?? self.asFg(evng:"Nloz cnbavmfe")
        Mechanics.text = ad.subscriptionModel ?? "0"
        aBTesting.text = ad.lootBoxMechanics  ?? "0"
        Estimation.text = ad.virtualCurrency  ?? "0"
        
     
        let transformer = SDImageResizingTransformer(
            size: CGSize(width: 320, height: 320),
            scaleMode: .aspectFill
        )

        // Apply to image loads
        if let uri = ad.leaderboardRanking {
            DBNEAvator.sd_setImage(with: URL(string:uri ),
                                   placeholderImage: UIImage(named: "avarut-headportrait"),
                                 options: .continueInBackground,
                                 context: [.imageTransformer: transformer])
            
            bIughAvator.sd_setImage(with: URL(string:uri ),
                                    placeholderImage:nil,
                                 options: .continueInBackground,
                                 context: [.imageTransformer: transformer,.storeCacheType : SDImageCacheType.memory.rawValue])
        }
        
        
       
        
        
    }
   
}
