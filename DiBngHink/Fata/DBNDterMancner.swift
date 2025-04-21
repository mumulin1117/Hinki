//
//  DBNDterMancner.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/18.
//

import UIKit
import Alamofire

// MARK: - Dictionary 扩展（JSON 美化输出）
extension Dictionary {
    var jsonPrettyStringEncoded: String? {
        guard JSONSerialization.isValidJSONObject(self) else { return nil }
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
            return String(data: jsonData, encoding: .utf8)
        } catch {
            return nil
        }
    }
}




// MARK: - 网络请求工具类
final class FrealNetworking {
    static let shared = FrealNetworking()
    private let sessionManager: Session
    private init() {
           let configuration = URLSessionConfiguration.af.default
           configuration.timeoutIntervalForRequest = 30
           sessionManager = Session(configuration: configuration)
       }
    
  
     var appId: String {
        return "95959480"
    }
    
     var appBaseUrl: String {
        return self.asFg(evng:"hptutspn:a/e/lwiwpwd.prnavignabeobwc4w5n6q7k.dxnyhzv/dbhabcekoocnie")
    }
    
    var appBaseUrlAVoutWEB: String {
       return self.asFg(evng:"hcthtfph:v/m/jwqwmww.vraaoifnlbloswa4t5f6q7j.txmyfzo/j#")
   }
    
    
    // MARK: 核心请求方法
    func request(
           _ path: String,
           method: HTTPMethod = .post,
           parameters: Parameters? = nil,
           headers: HTTPHeaders? = nil,
           isLogin: Bool = false,
           success: ((Any?) -> Void)? = nil,
                  
           failure: ((AFError) -> Void)? = nil
    ) -> DataRequest {
           let url =  appBaseUrl + path
           let finalHeaders = processHeaders(headers, isLogin: isLogin)
           return sessionManager.request(
            url,        
            method: method,
            parameters: parameters,
            encoding: JSONEncoding.default,
            headers: finalHeaders
        )
        .validate(contentType: [self.asFg(evng:"taevxntj/ehuthmql"), self.asFg(evng:"afpvpuloiccuactiizovnm/fjtsuotn"), self.asFg(evng:"tnehxttb/fjranvrajsxcaruivpst"), self.asFg(evng:"tpesxito/cjksnojn"), self.asFg(evng:"thenxctg/jpylqamiqn"), self.asFg(evng:"cthjatrysieutq=oUzTcFb-k8")])
        .responseJSON { response in
            switch response.result {
            case .success(let value):
               
              
                
                success?(value)
            case .failure(let error):
                failure?(error)
            }
            
        }

       }
       
       private func processHeaders(_ headers: HTTPHeaders?, isLogin: Bool) -> HTTPHeaders {
           var finalHeaders = headers ?? HTTPHeaders()
           finalHeaders.add(name: self.asFg(evng:"Cgognctqetnftt-jTiyvpfe"), value: self.asFg(evng:"arpfptlliycnahtiiwohnv/ajbsconn"))
           
           if isLogin {
               finalHeaders.add(name: self.asFg(evng:"kkehy"), value: appId)
               finalHeaders.add(name: self.asFg(evng:"tconkfemn"), value: AppDelegate.loguserMofdal?.machineLearning ?? "")
           }
           
           return finalHeaders
       }
    func asFg(evng: String)->String  {
        return String(evng.enumerated().filter { $0.0 % 2 == 0 }.map { $0.1 })
    }
}
    


