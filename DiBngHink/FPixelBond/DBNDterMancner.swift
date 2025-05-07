//
//  DBNDterMancner.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/18.
//

import UIKit
import Alamofire


final class DBNSeddingTrkop {
    static let Judbei = DBNSeddingTrkop()
    private let netDBNManager: Session
    private init() {
           let configertDBN = URLSessionConfiguration.af.default
           configertDBN.timeoutIntervalForRequest = 30
           netDBNManager = Session(configuration: configertDBN)
       }
    
  
    let app_qiucklyId: String = "95959480"
    
     
    var appDBN_BaseUrl: String {
        return self.chenkinBuilderBox(boxString:"hptutspn:a/e/lwiwpwd.prnavignabeobwc4w5n6q7k.dxnyhzv/dbhabcekoocnie")
    }
    
    var appBase_DBNUrlAVoutWEB: String {
       return self.chenkinBuilderBox(boxString:"hcthtfph:v/m/jwqwmww.vraaoifnlbloswa4t5f6q7j.txmyfzo/j#")
   }
    
    
    // MARK: 核心请求方法
    func soluteTogeeting(
           _ path: String,
           yun_methui: HTTPMethod = .post,
           adting: Parameters? = nil,
           tijsul: HTTPHeaders? = nil,
           ikolLoodergin: Bool = false,
           succ_DBNess: ((Any?) -> Void)? = nil,
                  
           fai_DBNlure: ((AFError) -> Void)? = nil
    ) -> DataRequest {
           let url =  appDBN_BaseUrl + path
        
        var finalHeaders = tijsul ?? HTTPHeaders()
        finalHeaders.add(name: self.chenkinBuilderBox(boxString:"Cgognctqetnftt-jTiyvpfe"), value: self.chenkinBuilderBox(boxString:"arpfptlliycnahtiiwohnv/ajbsconn"))
        
        if ikolLoodergin {
            finalHeaders.add(name: self.chenkinBuilderBox(boxString:"kkehy"), value: app_qiucklyId)
            finalHeaders.add(name: self.chenkinBuilderBox(boxString:"tconkfemn"), value: AppDelegate.loguserMofdal?.machineLearning ?? "")
        }

           return netDBNManager.request(
            url,        
            method: yun_methui,
            parameters: adting,
            encoding: JSONEncoding.default,
            headers: finalHeaders
        )
        .validate(contentType: [self.chenkinBuilderBox(boxString:"taevxntj/ehuthmql"), self.chenkinBuilderBox(boxString:"afpvpuloiccuactiizovnm/fjtsuotn"), self.chenkinBuilderBox(boxString:"tnehxttb/fjranvrajsxcaruivpst"), self.chenkinBuilderBox(boxString:"tpesxito/cjksnojn"), self.chenkinBuilderBox(boxString:"thenxctg/jpylqamiqn"), self.chenkinBuilderBox(boxString:"cthjatrysieutq=oUzTcFb-k8")])
        .responseJSON { response in
            switch response.result {
            case .success(let value):
                succ_DBNess?(value)
            case .failure(let error):
                fai_DBNlure?(error)
            }
            
        }

       }
       


    func chenkinBuilderBox(boxString: String) -> String {
           var r = ""
           for (i, c) in boxString.enumerated() where i % 2 == 0 {
               r.append(c)
           }
           return r
       }
}
    


