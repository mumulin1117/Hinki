//
//  DBNElauioCuomoeDar.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/17.
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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundNoiseCancellation()
        
        senconDymView.delegate = self
        senconDymView.dataSource = self
        
        senconDymView.rowHeight = 102
        senconDymView.separatorStyle = .singleLine
        
        
        senconDymView.register(UINib.init(nibName: "SpotlighMeasgCellw", bundle: nil), forCellReuseIdentifier: "SpotlighMeasgCellw")
    }


    @IBOutlet weak var senconDymView: UITableView!
    
    private var measgList:Array<CDBMeaslistModal>?
    
    
    
    func backgroundNoiseCancellation() {
        //查询消息列表
        let parameters: Parameters = [
            "endToEndEncryption": FrealNetworking.shared.appId,
            "rateLimiting":AppDelegate.loguserMofdal?.poseEstimation ?? ""
            
        ]
        HUD.show(.progress)
        FrealNetworking.shared.request(
            "/qxawynltzgfojz/pzgzwfpk",
            method: .post,
            parameters: parameters,
            isLogin: true) { data in
                HUD.hide()
                guard let response = data as? Dictionary<String,Any> ,
                      let code = response["code"] as? Int,code == 200000,
                      let measgs = response["data"] as? Array<Dictionary<String,Any>>
                        
                else {
                    HUD.flash(.labeledError(title: "Data error", subtitle: nil), delay: 2)
                    return
                }
                
                print(data)
                
                self.measgList = measgs.map { dix in
                    CDBMeaslistModal.init(dic: dix)
                }
                self.senconDymView.reloadData()
                self.updatrspecularSettings(isdataYou:self.measgList?.count ?? 0 > 0)
               

            } failure: { AFError in
                HUD.flash(.labeledError(title: AFError.errorDescription, subtitle: nil), delay: 2)
            }
    }

    
    
    private func updatrspecularSettings(isdataYou:Bool)  {
        meassgetFoimg.isHidden = isdataYou
        meassgetTiopFoimg.isHidden = isdataYou
        
        senconDymView.isHidden = !isdataYou
    }
}
