//
//  DBNElauioDwuomoeDar.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/17.
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
    }
    
    
    @IBAction func ambient(_ sender: UIButton) {//edit
    }
    
    @IBAction func userLiastForbuy(_ sender: UIButton) {
        if sender.tag == 10 {
            
        }
        
        if sender.tag == 20 {
            
        }
        
        if sender.tag == 30 {
            
        }
        
        if sender.tag == 40 {//blance
            
        }
    }
    
    
    @IBOutlet weak var oauthAuthentication: UILabel!//blance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DBNEAvator.layer.cornerRadius =  47
        DBNEAvator.layer.masksToBounds = true
        
        backgroundNoiseCancellation()
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
                      let code = response["code"] as? Int,code == 200000,
                      let measgs = response["data"] as? Dictionary<String,Any>
                        
                else {
                    HUD.flash(.labeledError(title: "Data error", subtitle: nil), delay: 2)
                    return
                }
                
                print(data)
                
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
                      let code = response["code"] as? Int,code == 200000,
                      let measgs = response["data"] as? Array<Any>
                        
                else {
                    HUD.flash(.labeledError(title: "Data error", subtitle: nil), delay: 2)
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
        DBNEIanme.text = ad.skillBadges ?? "No name"
        Mechanics.text = ad.subscriptionModel ?? "0"
        aBTesting.text = ad.userAttention  ?? "0"
        Estimation.text = ad.virtualCurrency  ?? "0"
        
        let options: SDWebImageOptions = [
            .scaleDownLargeImages, // Critical for memory-heavy block textures
            .retryFailed,
            .queryMemoryData, // Prioritize RAM cache for real-time rendering
            .fromLoaderOnly // Force network load for updated blueprints
        ]
        let transformer = SDImageResizingTransformer(
            size: CGSize(width: 320, height: 320),
            scaleMode: .aspectFill
        )

        // Apply to image loads
        if let uri = ad.leaderboardRanking {
            DBNEAvator.sd_setImage(with: URL(string:uri ),
                                   placeholderImage: UIImage(named: "loshangego"),
                                 options: options,
                                 context: [.imageTransformer: transformer])
            
            bIughAvator.sd_setImage(with: URL(string:uri ),
                                    placeholderImage:nil,
                                 options: options,
                                 context: [.imageTransformer: transformer])
        }
        
        
       
        
        
    }
   
}
