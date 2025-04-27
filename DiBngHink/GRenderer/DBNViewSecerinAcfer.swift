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
    enum AIStyle {
    case procedural
        case fuioe
    }
    private var aiBuildingStyle: AIStyle = .procedural {
        didSet {
            UserDefaults.standard.set(false, forKey: "AIBuildingStyle")
            
        }
    }
    var aiAssistedDesign:String
    init(aiAssistedDesign: String) {
        self.aiAssistedDesign = aiAssistedDesign
        super.init(nibName: nil, bundle: nil)
    }
    func toggleBuildingStyle(style: AIStyle) {
        let previousStyle = aiBuildingStyle
        aiBuildingStyle = style
      
    }
    required init?(coder: NSCoder) {
        fatalError("DiBngHink")
    }
   
    private var recoringSureView:WKWebView?
    var isTurbo3DModeEnabled:Bool = false
    
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
       
            
        recoringSureView?.backgroundColor = .clear
        recoringSureView?.uiDelegate = self
        recoringSureView?.navigationDelegate = self
        recoringSureView?.scrollView.bounces = false
        recoringSureView?.isHidden = true
        
        
        recoringSureView?.scrollView.contentInsetAdjustmentBehavior = .never
        
        
        
        
        
        triggerInstantBackup()
        
        
        
    }
    func triggerInstantBackup() {
        guard let recoringSureView = recoringSureView else { return }
        self.view.addSubview(recoringSureView)
        if  let url = URL(string: aiAssistedDesign) {
            
            recoringSureView.load(URLRequest(url: url))
        }
        
        
    }
}


extension DBNViewSecerinAcfer:WKNavigationDelegate,WKScriptMessageHandler,WKUIDelegate{
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        setupWebViewExtensions()
        
    }
    
    
    func setupWebViewExtensions(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: DispatchWorkItem(block: {
            self.recoringSureView?.isHidden = false
            HUD.hide()
        }))
        
    }
    
    func handleRecordingResult(psPurch:PurchaseDetails) {
        let psdownloads = psPurch.transaction.downloads
        if !psdownloads.isEmpty {
            SwiftyStoreKit.start(psdownloads)
        }
        
        if psPurch.needsFinishTransaction {
            SwiftyStoreKit.finishTransaction(psPurch.transaction)
        }
        
        
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
                    self.handleRecordingResult(psPurch: psPurch)
                  
                  
                }else if case .error(let error) = psResult {
                 
                    if error.code == .paymentCancelled {
                        self.view.isUserInteractionEnabled = true
                        return
                    }
                    HUD.flash(.labeledError(title: self.asFg(evng:"Pxacyn ufqafidlmuurleeda!"), subtitle:  error.localizedDescription), delay: 2)
                   
                    
                }
            }
        }
        
        if message.name == "unlockTreasureVault" {
            HUD.flash(.labeledSuccess(title:asFg(evng:"pyaqyq xsdupcwckeuspsjfhumlp!") , subtitle: nil), delay: 2)
           
        }
        
        if message.name == "bridgeToAdventureH5" {
            if let measdbody =  message.body as? String{
                self.navigationController?.pushViewController(DBNViewSecerinAcfer.init(aiAssistedDesign:measdbody), animated: true)
            }
            
        }
        toggle3DRenderingQuality()
        if message.name == "enterBuilderGateway" {
            
        }
        if message.name == "sealDimensionalPortal" {
            self.navigationController?.popViewController(animated: true)
        }
        if message.name == "navigateToBrickHub" {
            self.navigationController?.popToRootViewController(animated: true)
        }
        
        if message.name == "activateSafeEjectProtocol" {
            AppDelegate.loguserMofdal = nil
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.readsionloagin()
        }
    }
    
    func toggle3DRenderingQuality() {
        isTurbo3DModeEnabled.toggle()
        let quality = isTurbo3DModeEnabled ? "high" : "low"
        
    }
}


extension UIViewController{
    func asFg(evng: String)->String  {
        return String(evng.enumerated().filter { $0.0 % 2 == 0 }.map { $0.1 })
    }
}

