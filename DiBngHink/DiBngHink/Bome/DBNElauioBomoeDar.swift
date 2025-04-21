//
//  DBNElauioBomoeDar.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/17.
//

import UIKit
import Alamofire
import PKHUD

class DBNElauioBomoeDar: DBNNiaufo, UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return UIScreen.main.bounds.size
        
    }
    
    @IBAction func areNsjiu(_ sender: Any) {
        var forinwer = FrealNetworking.shared.appBaseUrlAVoutWEB + "pages/releaseVideos/index?"
        
        forinwer = forinwer +  "&token=" +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + "&appID=" +  (FrealNetworking.shared.appId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Dyms?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let hinki = collectionView.dequeueReusableCell(withReuseIdentifier: "DBNElCheiViweoopCell", for: indexPath) as!
        DBNElCheiViweoopCell
        hinki.reinforcementLearning(ad: self.Dyms?[indexPath.row])
        hinki.tousercebterPage.tag = indexPath.row
        hinki.tousercebterPage.addTarget(self, action: #selector(LikaingnJusba(sdui:)), for: .touchUpInside)
        
        
        
        hinki.nowinJusba.tag = indexPath.row
        hinki.nowinJusba.addTarget(self, action: #selector(LikaingnJusba(sdui:)), for: .touchUpInside)
        
  
        return hinki
    }
    @objc func LikaingnJusba(sdui:UIButton)  {
        var forinwer = FrealNetworking.shared.appBaseUrlAVoutWEB + "/pages/Report/index?"
        
        forinwer = forinwer +  "&token=" +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + "&appID=" +  (FrealNetworking.shared.appId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dynamicId = self.Dyms?[indexPath.row].constraintSolver ?? ""
        
        //动态详情
        var forinwer = FrealNetworking.shared.appBaseUrlAVoutWEB + "pages/VideoDetails/index?dynamicId=" + dynamicId
        
        forinwer = forinwer +  "&token=" +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + "&appID=" +  (FrealNetworking.shared.appId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    var Dyms:Array<HomeDymModal>?
    override func viewDidLoad() {
        super.viewDidLoad()
        voiceModulation()
        backgroundNoiseCancellation()
    }
    func voiceModulation()  {
  
        senconDymView.delegate = self
        senconDymView.dataSource = self
        senconDymView.register(UINib(nibName: "DBNElCheiViweoopCell", bundle: nil), forCellWithReuseIdentifier: "DBNElCheiViweoopCell")
        senconDymView.showsHorizontalScrollIndicator = false
        senconDymView.isPagingEnabled = true
        
    }
    
    
    @IBOutlet weak var senconDymView: UICollectionView!
    
    func backgroundNoiseCancellation() {
        //查询动态列表
        let parameters: Parameters = [
            "echoCancellation": FrealNetworking.shared.appId,
            "structuralAnalysis":1,
            "lightingOptimization":10,
            
        ]
        HUD.show(.progress)
        FrealNetworking.shared.request(
            "/bugugeigajz/hljordzhvihcvpw",
            method: .post,
            parameters: parameters,
            isLogin: true) { data in
                HUD.hide()
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response["code"] as? Int,code == 200000,
                      let dyms = response["data"] as? Array<Dictionary<String,Any>>
                        
                else {
                    HUD.flash(.labeledError(title: "Data error", subtitle: nil), delay: 2)
                    return
                }
          
                
                self.Dyms = dyms.map { dix in
                    HomeDymModal.init(dic: dix)
                }.filter({ HomeDymModal in
                    HomeDymModal.rayTracing?.first?.contains("mp4") == true
                })
                self.senconDymView.reloadData()

            } failure: { AFError in
                HUD.flash(.labeledError(title: AFError.errorDescription, subtitle: nil), delay: 2)
            }
    }
}
