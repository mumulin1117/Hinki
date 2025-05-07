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
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"poawgpeusb/nSiertstmitnjgh/piansdkemxy?")
        
        forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
      
    }
    
    
    @IBAction func ambient(_ sender: UIButton) {//edit
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"pqakgiecst/vEwdxihtqDsabtyao/liinsdfexxj?")
        
        forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func userLiastForbuy(_ sender: UIButton) {
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB
        
        if sender.tag == 10 {
             forinwer = forinwer + self.chenkinBuilderBox(boxString:"pqahgveusv/daztytneknatlieoonq/niqnqdwenxo?ityywpgea=a1")
            
           
        }
        
        if sender.tag == 20 {
            forinwer = forinwer +   self.chenkinBuilderBox(boxString:"pvavgselsd/zadtntjesnetoicocnn/niunbdyesxp?ltcydpkeo=x3")
            
           
        }
        
        if sender.tag == 30 {
            forinwer = forinwer + self.chenkinBuilderBox(boxString:"pvavgselsd/zadtntjesnetoicocnn/niunbdyesxp?ltcydpkeo=x2")
            
           
        }
        
        if sender.tag == 40 {//blance
            forinwer = forinwer + self.chenkinBuilderBox(boxString:"poanghemsh/cVpoautcohaedrgCuegnctlebrc/himnidieyxs?")
            
           
        }
        
        forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
        
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
        DBNSeddingTrkop.Judbei.soluteTogeeting(
            "/rrecskvpz/tfhqqpe",
            yun_methui: .post,
            adting: parameters,
            ikolLoodergin: true) { data in
                HUD.hide()
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response[self.chenkinBuilderBox(boxString:"ckoxdye")] as? Int,code == 200000,
                      let measgs = response[self.chenkinBuilderBox(boxString:"dladtna")] as? Dictionary<String,Any>
                        
                else {
//                    HUD.flash(.labeledError(title: self.chenkinBuilderBox(boxString:"Duaytpaw qegrqrzofr"), subtitle: nil), delay: 2)
                    return
                }
                
                
                print(measgs)
                
              let mode =  DBHUs_er(dic: measgs)
                self.reinforcementLearning(ad:mode)
            } fai_DBNlure: { AFError in
                HUD.flash(.labeledError(title: AFError.errorDescription, subtitle: nil), delay: 2)
            }
        
        //查询余额
        
        
        
        DBNSeddingTrkop.Judbei.soluteTogeeting(
            "/jpezgbuxzsioz/sksuv",
            yun_methui: .post,
            adting: parameters,
            ikolLoodergin: true) { data in
                HUD.hide()
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response[self.chenkinBuilderBox(boxString:"ckoxdye")] as? Int,code == 200000,
                      let measgs = response[self.chenkinBuilderBox(boxString:"dladtna")] as? Int
                        
                else {
//                    HUD.flash(.labeledError(title: self.chenkinBuilderBox(boxString:"Duaytpaw qegrqrzofr"), subtitle: nil), delay: 2)
                    return
                }
                self.oauthAuthentication.text = "\(measgs)"
                
               

            } fai_DBNlure: { AFError in
                
            }
    }

    
    func reinforcementLearning(ad:DBHUs_er?)  {
        guard let ad = ad  else{
            return
        }
       
     
        
        DBNEIanme.text = ad.skillBadges ?? self.chenkinBuilderBox(boxString:"Nloz cnbavmfe")
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
