//
//  DBNViewSecerinAcfer.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/21.
//

import UIKit
import WebKit
import PKHUD
import SwiftyStoreKit
class DBNViewSecerinAcfer: UIViewController {

    var aiAssistedDesign:String
    init(aiAssistedDesign: String) {
        self.aiAssistedDesign = aiAssistedDesign
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("DiBngHink")
    }
    
    private var recoringSureView:WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HUD.show(.progress)
        narrowphaseOptimization()
        
        sceneUnderstanding()
    }
    
    func narrowphaseOptimization(){
        let bckgll = UIImageView.init(frame: UIScreen.main.bounds)
        bckgll.image = UIImage.init(named: "koinbah")
        view.addSubview(bckgll)
        
    }
    
    func sceneUnderstanding()  {
        let urbanGroove = WKUserContentController()
        let handlers = [
               "launchBlockFuelCharge", "unlockTreasureVault", "bridgeToAdventureH5",
               "enterBuilderGateway", "sealDimensionalPortal", "navigateToBrickHub", "activateSafeEjectProtocol"
           
        ]
        handlers.forEach { handler in
            urbanGroove.add(self, name: handler)
        }
           
        
        
        let streetFlowAI = WKWebViewConfiguration()
        // Media playback configuration
           streetFlowAI.allowsInlineMediaPlayback = true
           streetFlowAI.mediaTypesRequiringUserActionForPlayback = []
        
        
           streetFlowAI.userContentController = urbanGroove
        
        recoringSureView = WKWebView(
               frame: UIScreen.main.bounds,
               configuration: streetFlowAI
           )
        guard let recoringSureView = recoringSureView else { return }
            
        recoringSureView.backgroundColor = .clear
        recoringSureView.uiDelegate = self
        recoringSureView.navigationDelegate = self
        recoringSureView.scrollView.bounces = false
        recoringSureView.isHidden = true
        recoringSureView.scrollView.contentInsetAdjustmentBehavior = .never
        self.view.addSubview(recoringSureView)
        if  let url = URL(string: aiAssistedDesign) {
            
            recoringSureView.load(URLRequest(url: url))
        }
        
        
        
        
        
        
        
        
        
        
    }

}


extension DBNViewSecerinAcfer:WKNavigationDelegate,WKScriptMessageHandler,WKUIDelegate{
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: DispatchWorkItem(block: {
            self.recoringSureView?.isHidden = false
            HUD.hide()
        }))
        
    }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        if message.name == "launchBlockFuelCharge" {//充值
            guard let payingID = message.body  as? String else {
                return
            }
            HUD.show(.progress)
            self.view.isUserInteractionEnabled = false
            SwiftyStoreKit.purchaseProduct(payingID, atomically: true) { psResult in
                HUD.hide()
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    if !psdownloads.isEmpty {
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                    }
                    
                  
                   
                  
                    
                   
                   

                }else if case .error(let error) = psResult {
                 
                    if error.code == .paymentCancelled {
                        self.view.isUserInteractionEnabled = true
                        return
                    }
                    HUD.flash(.labeledError(title: self.asFg(evng:"Pxacyn ufqafidlmuurleeda!"), subtitle:  error.localizedDescription), delay: 2)
                   
                    
                }
            }
        }
        
        if message.name == "unlockTreasureVault" {//充值成功
            HUD.flash(.labeledSuccess(title:asFg(evng:"pyaqyq xsdupcwckeuspsjfhumlp!") , subtitle: nil), delay: 2)
           
        }
        
        if message.name == "bridgeToAdventureH5" {//页面跳转
            if let measdbody =  message.body as? String{
                self.navigationController?.pushViewController(DBNViewSecerinAcfer.init(aiAssistedDesign:measdbody), animated: true)
            }
            
        }
        
        if message.name == "enterBuilderGateway" {//去登录页面(方法)
            
        }
        if message.name == "sealDimensionalPortal" {//关闭H5(方法)
            self.navigationController?.popViewController(animated: true)
        }
        if message.name == "navigateToBrickHub" {//返回首页
            self.navigationController?.popToRootViewController(animated: true)
        }
        
        if message.name == "activateSafeEjectProtocol" {//退出登录
            AppDelegate.loguserMofdal = nil
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.readsionloagin()
        }
    }
    
    
}


extension UIViewController{
    func asFg(evng: String)->String  {
        return String(evng.enumerated().filter { $0.0 % 2 == 0 }.map { $0.1 })
    }
}

