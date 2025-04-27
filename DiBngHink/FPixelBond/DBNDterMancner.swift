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
        return self.asFg(evng:"hptutspn:a/e/lwiwpwd.prnavignabeobwc4w5n6q7k.dxnyhzv/dbhabcekoocnie")
    }
    
    var appBase_DBNUrlAVoutWEB: String {
       return self.asFg(evng:"hcthtfph:v/m/jwqwmww.vraaoifnlbloswa4t5f6q7j.txmyfzo/j#")
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
        finalHeaders.add(name: self.asFg(evng:"Cgognctqetnftt-jTiyvpfe"), value: self.asFg(evng:"arpfptlliycnahtiiwohnv/ajbsconn"))
        
        if ikolLoodergin {
            finalHeaders.add(name: self.asFg(evng:"kkehy"), value: app_qiucklyId)
            finalHeaders.add(name: self.asFg(evng:"tconkfemn"), value: AppDelegate.loguserMofdal?.machineLearning ?? "")
        }

           return netDBNManager.request(
            url,        
            method: yun_methui,
            parameters: adting,
            encoding: JSONEncoding.default,
            headers: finalHeaders
        )
        .validate(contentType: [self.asFg(evng:"taevxntj/ehuthmql"), self.asFg(evng:"afpvpuloiccuactiizovnm/fjtsuotn"), self.asFg(evng:"tnehxttb/fjranvrajsxcaruivpst"), self.asFg(evng:"tpesxito/cjksnojn"), self.asFg(evng:"thenxctg/jpylqamiqn"), self.asFg(evng:"cthjatrysieutq=oUzTcFb-k8")])
        .responseJSON { response in
            switch response.result {
            case .success(let value):
                succ_DBNess?(value)
            case .failure(let error):
                fai_DBNlure?(error)
            }
            
        }

       }
       

    func asFg(evng: String)->String  {
        return String(evng.enumerated().filter { $0.0 % 2 == 0 }.map { $0.1 })
    }
}
    


