//
//  DBNElauioBomoeDar.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit
import Alamofire
import PKHUD

class DBNElauioBomoeDar: DBNNiaufo, UICollectionViewDelegate, UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return UIScreen.main.bounds.size
        
    }
    
    @IBAction func areNsjiu(_ sender: Any) {
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"phabgceqsv/truealoesayspefVviadnegoesd/hilnpdzeoxb?")
        
        forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
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
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"/apsalgzezss/pRnelpzoxrvtd/xiwngdqevxw?")
        
        forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dynamicId = self.Dyms?[indexPath.row].constraintSolver ?? ""
        
        //动态详情
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"placgqeesw/gVkijdeecogDdeitbawiflcsi/zisnldoeaxx?advysnoajmaiiceIsdq=") + dynamicId
        
        forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
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
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Dyms?.count ?? 0
    }
    
    @IBOutlet weak var senconDymView: UICollectionView!
    
    func backgroundNoiseCancellation() {
        //查询动态列表
        let parameters: Parameters = [
            "echoCancellation": DBNSeddingTrkop.Judbei.app_qiucklyId,
            "structuralAnalysis":1,
            "lightingOptimization":10,
            
        ]
        HUD.show(.progress)
        DBNSeddingTrkop.Judbei.soluteTogeeting(
            "/bugugeigajz/hljordzhvihcvpw",
            yun_methui: .post,
            adting: parameters,
            ikolLoodergin: true) { data in
                HUD.hide()
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
                    HomeDymModal.rayTracing?.first?.contains(self.chenkinBuilderBox(boxString:"mgph4")) == true
                })
                self.senconDymView.reloadData()

            } fai_DBNlure: { AFError in
                HUD.flash(.labeledError(title: nil, subtitle: AFError.errorDescription), delay: 2)
            }
    }
}
