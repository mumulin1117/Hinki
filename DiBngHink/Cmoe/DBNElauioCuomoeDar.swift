//
//  DBNElauioCuomoeDar.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit
import Alamofire
import PKHUD

class DBNElauioCuomoeDar: DBNNiaufo, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var meassgetFoimg: UIImageView!
    
    @IBOutlet weak var meassgetTiopFoimg: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        measgList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dbn = tableView.dequeueReusableCell(withIdentifier: "SpotlighMeasgCellw", for: indexPath) as! SpotlighMeasgCellw
        return dbn
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        backgroundNoiseCancellation()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

       
        
        senconDymView.delegate = self
        senconDymView.dataSource = self
        
        senconDymView.rowHeight = 102
        senconDymView.separatorStyle = .singleLine
        
        
        senconDymView.register(UINib.init(nibName: "SpotlighMeasgCellw", bundle: nil), forCellReuseIdentifier: "SpotlighMeasgCellw")
    }


    @IBOutlet weak var senconDymView: UITableView!
    
    private var measgList:Array<CDBMeaslistModal>?
    
    
    @IBAction func buildmateAio(_ sender: Any) {
//        let userid = self.usermodels?[indexPath.row].brickAssembly ?? ""
        
        
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.asFg(evng:"ppaigqewsf/tslccryeiexnxprlvabyd/einnrdteyxc/w?")
        
        forinwer = forinwer +  self.asFg(evng:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.asFg(evng:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func vricaTalkAij(_ sender: Any) {
       
       
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.asFg(evng:"ptawgjetse/rCtrpepartoerRpohlted/yinnldxehxj/t?")
        
        forinwer = forinwer +  self.asFg(evng:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.asFg(evng:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func backgroundNoiseCancellation() {
        //查询消息列表
        let parameters: Parameters = [
            "endToEndEncryption": DBNSeddingTrkop.Judbei.app_qiucklyId,
            "rateLimiting":AppDelegate.loguserMofdal?.poseEstimation ?? ""
            
        ]
        HUD.show(.progress)
        DBNSeddingTrkop.Judbei.soluteTogeeting(
            "/qxawynltzgfojz/pzgzwfpk",
            yun_methui: .post,
            adting: parameters,
            ikolLoodergin: true) { data in
                HUD.hide()
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response[self.asFg(evng:"ckoxdye")] as? Int,code == 200000,
                      let measgs = response[self.asFg(evng:"dladtna")] as? Array<Dictionary<String,Any>>
                        
                else {
                    HUD.flash(.labeledError(title: self.asFg(evng:"Duaytpaw qegrqrzofr"), subtitle: nil), delay: 2)
                    return
                }
           
                
                self.measgList = measgs.map { dix in
                    CDBMeaslistModal.init(dic: dix)
                }
                self.senconDymView.reloadData()
                self.updatrspecularSettings(isdataYou:self.measgList?.count ?? 0 > 0)
               

            } fai_DBNlure: { AFError in
                HUD.flash(.labeledError(title: AFError.errorDescription, subtitle: nil), delay: 2)
            }
    }

    
    
    private func updatrspecularSettings(isdataYou:Bool)  {
        meassgetFoimg.isHidden = isdataYou
        meassgetTiopFoimg.isHidden = isdataYou
        
        senconDymView.isHidden = !isdataYou
    }
}
