//
//  DBNElauioAmoeDar.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
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
            hinki.nowinJusba.tag = indexPath.row
            hinki.nowinJusba.addTarget(self, action: #selector(nowinJusba(sdui:)), for: .touchUpInside)
            
//            hinki.Selesslike.tag = indexPath.row
//            hinki.Selesslike.addTarget(self, action: #selector(LikaingnJusba(sdui:)), for: .touchUpInside)
            return hinki
        }
    }
    
    
    
   @objc func nowinJusba(sdui:UIButton)  {
       //举报中心
//       let dynamicIdUser = self.Dyms?[sdui.tag].constraintSolver ?? ""
       
       
       var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"/iprafgoeesf/bRjehpjozrytt/misnjdoecxo?")
       
       forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ftqopklednj=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&aadpjpwIvDf=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
       
      let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
       self.navigationController?.pushViewController(vc, animated: true)
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == onliEwusersView {
            
            let userid = self.usermodels?[indexPath.row].brickAssembly ?? ""
            
            //用户个人中心
            var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"/spbangoepsi/gHjoamgeaPyabgfel/ripnddweqxc?budsaerrvIcdo=") + userid
            
            forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ktrorklebnf=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&jakpopwIeDj=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
            
           let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
            self.navigationController?.pushViewController(vc, animated: true)
        }else  {
            let dynamicId = self.Dyms?[indexPath.row].constraintSolver ?? ""
            
            //动态详情
            var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"/lphaegtezse/wDoylnfazmdilcsDuejtqamitlusi/iionadaefxd?fdtyinhazmfiscrIddh=") + dynamicId
            
            forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&etuoykiewnc=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&waqpvppIwDs=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
            
           let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    private var usermodels:Array<DBHUs_er>?
    var Dyms:Array<HomeDymModal>?
    
    @IBOutlet weak var onliEwusersView: UICollectionView!
    
    @IBOutlet weak var senconDymView: UICollectionView!
    
    @IBAction func pubAdunMkiki(_ sender: Any) {
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"pnafgtepsw/tRxeqlqezafsxeeDdyknyaamhivcs/simnidvecxo?")
        
        forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ftyopkoennv=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&pazphpjIjDc=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
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
            "echoCancellation": DBNSeddingTrkop.Judbei.app_qiucklyId
        ]
        
        
        HUD.show(.progress)
        DBNSeddingTrkop.Judbei.soluteTogeeting(
            "/wfwxcqsotz/nkqfxs",
            yun_methui: .post,
            adting: parameters,
            ikolLoodergin: true) { data in
                HUD.hide()
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response[self.chenkinBuilderBox(boxString:"ckoxdye")] as? Int,code == 200000,
                      let users = response[self.chenkinBuilderBox(boxString:"dladtna")] as? Array<Dictionary<String,Any>>
                        
                else {
                    HUD.flash(.labeledError(title: self.chenkinBuilderBox(boxString:"Duaytpaw qegrqrzofr"), subtitle: nil), delay: 2)
                    return
                }
                
                self.usermodels = users.map { dix in
                    DBHUs_er.init(dic: dix)
                }
                self.onliEwusersView.reloadData()

            } fai_DBNlure: { AFError in
                HUD.flash(.labeledError(title: nil, subtitle: AFError.errorDescription), delay: 2)
            }
    }
   
    
    
    func backgroundNoiseCancellation() {
        //查询动态列表
        let parameters: Parameters = [
            "echoCancellation": DBNSeddingTrkop.Judbei.app_qiucklyId,
            "structuralAnalysis":1,
            "lightingOptimization":10,
            
        ]
        
        DBNSeddingTrkop.Judbei.soluteTogeeting(
            "/bugugeigajz/hljordzhvihcvpw",
            yun_methui: .post,
            adting: parameters,
            ikolLoodergin: true) { data in
                
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response[self.chenkinBuilderBox(boxString:"ckoxdye")] as? Int,code == 200000,
                      let dyms = response[self.chenkinBuilderBox(boxString:"dladtna")] as? Array<Dictionary<String,Any>>
                        
                else {
                    HUD.flash(.labeledError(title: self.chenkinBuilderBox(boxString:"Duaytpaw qegrqrzofr"), subtitle: nil), delay: 2)
                    return
                }
             
                
                self.Dyms = dyms.map { dix in
                    HomeDymModal.init(dic: dix)
                }.filter({ HomeDymModal in
                    HomeDymModal.rayTracing?.first?.contains(self.chenkinBuilderBox(boxString:"mgph4")) == false
                })
                self.senconDymView.reloadData()

            } fai_DBNlure: { AFError in
                HUD.flash(.labeledError(title: nil, subtitle: AFError.errorDescription), delay: 2)
            }
    }
}
