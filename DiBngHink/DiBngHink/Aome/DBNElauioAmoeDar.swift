//
//  DBNElauioAmoeDar.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/17.
//

import UIKit
import PKHUD
import Alamofire

class DBNElauioAmoeDar: DBNNiaufo, UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == onliEwusersView {
            return CGSize(width: 110, height: 120)
        }else{//- (self.tabBarController?.tabBar.frame.height ?? 64) - (((UIApplication.shared.delegate) as? AppDelegate)?.window?.safeAreaInsets.bottom ?? 0) - 30
            return CGSize(width: 242, height: collectionView.frame.height )
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == onliEwusersView {
            return usermodels?.count ?? 0
        }else if collectionView == senconDymView {
            return Dyms?.count ?? 0
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == onliEwusersView {
            let hinki = collectionView.dequeueReusableCell(withReuseIdentifier: "DBNElAhometopCell", for: indexPath) as!
            DBNElAhometopCell
            hinki.reinforcementLearning(ad: self.usermodels?[indexPath.row])
           
            return hinki
        }else  {
            let hinki = collectionView.dequeueReusableCell(withReuseIdentifier: "DBNElBoardtopCell", for: indexPath) as!
            DBNElBoardtopCell
            hinki.reinforcementLearning(ad: self.Dyms?[indexPath.row])
           
            return hinki
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == onliEwusersView {
            
        }else  {
           
        }
    }
    
    private var usermodels:Array<User>?
    var Dyms:Array<HomeDymModal>?
    
    @IBOutlet weak var onliEwusersView: UICollectionView!
    
    @IBOutlet weak var senconDymView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        featureExtraction()
        
        voiceModulation()
        
        backgroundNoiseCancellation()
    }

    func voiceModulation()  {
        onliEwusersView.delegate = self
        onliEwusersView.dataSource = self
        onliEwusersView.register(UINib(nibName: "DBNElAhometopCell", bundle: nil), forCellWithReuseIdentifier: "DBNElAhometopCell")
        onliEwusersView.showsHorizontalScrollIndicator = false
        
        senconDymView.delegate = self
        senconDymView.dataSource = self
        senconDymView.register(UINib(nibName: "DBNElBoardtopCell", bundle: nil), forCellWithReuseIdentifier: "DBNElBoardtopCell")
        senconDymView.showsHorizontalScrollIndicator = false
       
        
    }

   

}


extension DBNElauioAmoeDar{
    func featureExtraction() {
        //查询用户列表
        let parameters: Parameters = [
            "echoCancellation": FrealNetworking.shared.appId
        ]
        
        
        HUD.show(.progress)
        FrealNetworking.shared.request(
            "/wfwxcqsotz/nkqfxs",
            method: .post,
            parameters: parameters,
            isLogin: true) { data in
                HUD.hide()
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response["code"] as? Int,code == 200000,
                      let users = response["data"] as? Array<Dictionary<String,Any>>
                        
                else {
                    HUD.flash(.labeledError(title: "Data error", subtitle: nil), delay: 2)
                    return
                }
                
                self.usermodels = users.map { dix in
                    User.init(dic: dix)
                }
                self.onliEwusersView.reloadData()

            } failure: { AFError in
                HUD.flash(.labeledError(title: AFError.errorDescription, subtitle: nil), delay: 2)
            }
    }
   
    
    
    func backgroundNoiseCancellation() {
        //查询动态列表
        let parameters: Parameters = [
            "echoCancellation": FrealNetworking.shared.appId,
            "structuralAnalysis":1,
            "lightingOptimization":10,
            
        ]
        
        FrealNetworking.shared.request(
            "/bugugeigajz/hljordzhvihcvpw",
            method: .post,
            parameters: parameters,
            isLogin: true) { data in
                
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response["code"] as? Int,code == 200000,
                      let dyms = response["data"] as? Array<Dictionary<String,Any>>
                        
                else {
                    HUD.flash(.labeledError(title: "Data error", subtitle: nil), delay: 2)
                    return
                }
                
                print(data)
                
                self.Dyms = dyms.map { dix in
                    HomeDymModal.init(dic: dix)
                }.filter({ HomeDymModal in
                    HomeDymModal.rayTracing?.first?.contains("mp4") == false
                })
                self.senconDymView.reloadData()

            } failure: { AFError in
                HUD.flash(.labeledError(title: AFError.errorDescription, subtitle: nil), delay: 2)
            }
    }
}
