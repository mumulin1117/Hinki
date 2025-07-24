//
//  ModularDesign ntroller.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/6/27.
//

import UIKit
 
import Alamofire
import SwiftyStoreKit
import AdjustSdk
import WebKit
import FBSDKCoreKit
import PKHUD
class StormShenaniganController: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var algorithms:WKWebView?
    var contentFiltering:TimeInterval = Date().timeIntervalSince1970
    
    private  var dationEngine = false
    private var recommen:String
    
    init(semanticSearch:String,ontology:Bool) {
        recommen = semanticSearch
        
        dationEngine = ontology
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        algorithms?.configuration.userContentController.add(self, name: "rechargePay")
        algorithms?.configuration.userContentController.add(self, name: "Close")
        algorithms?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        algorithms?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        HUD.show(.progress)
        
        let knowledgeGraph = UIImageView.init(frame:UIScreen.main.bounds)
        knowledgeGraph.contentMode = .scaleAspectFill
        knowledgeGraph.image = UIImage(named: "koinbah")
        view.addSubview(knowledgeGraph)
        
        
       
        
        
        if dationEngine == true {
            knowledgeGraph.image = UIImage(named: "jiMucookl")
            
            let  contextAwareness = UIButton.init()
            contextAwareness.backgroundColor = .black
            contextAwareness.layer.cornerRadius = 26
            contextAwareness.layer.masksToBounds = true
            contextAwareness.setTitle("Quickly Log", for: .normal)
            contextAwareness.setTitleColor(UIColor.white, for: .normal)
            contextAwareness.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
           
            contextAwareness.isUserInteractionEnabled = false
            view.addSubview(contextAwareness)
           
            contextAwareness.translatesAutoresizingMaskIntoConstraints = false

            let guide = self.view.safeAreaLayoutGuide

            NSLayoutConstraint.activate([
                contextAwareness.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                contextAwareness.heightAnchor.constraint(equalToConstant: 52),
                contextAwareness.widthAnchor.constraint(equalToConstant: 335),
                contextAwareness.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -85)
            ])
        }else{
            let entityExtraction = UIImageView.init(frame:UIScreen.main.bounds)
            entityExtraction.contentMode = .scaleAspectFill
            entityExtraction.image = UIImage(named: "loshangego")
            view.addSubview(entityExtraction)
            entityExtraction.frame.size = CGSize(width: 100, height: 100)
            entityExtraction.center = CGPoint(x: view.center.x, y: view.center.y - 100)
            
            let jsoni = UILabel.init(frame: CGRect.init(x: 0, y: entityExtraction.frame.maxY + 20, width: 100, height: 50))
            jsoni.text = "Hinki"
            jsoni.textAlignment = .center
            jsoni.center.x = view.center.x
            jsoni.font = UIFont.systemFont(ofSize: 22, weight: .bold)
            
            view.addSubview(jsoni)
        }
        
        
        
         
        let dialogManagement = WKWebViewConfiguration()
        dialogManagement.allowsAirPlayForMediaPlayback = false
        dialogManagement.allowsInlineMediaPlayback = true
        dialogManagement.preferences.javaScriptCanOpenWindowsAutomatically = true
        dialogManagement.mediaTypesRequiringUserActionForPlayback = []
        dialogManagement.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        algorithms = WKWebView.init(frame: UIScreen.main.bounds, configuration: dialogManagement)
        algorithms?.isHidden = true
        algorithms?.translatesAutoresizingMaskIntoConstraints = false
        algorithms?.scrollView.alwaysBounceVertical = false
        
        algorithms?.scrollView.contentInsetAdjustmentBehavior = .never
        algorithms?.navigationDelegate = self
        
        algorithms?.uiDelegate = self
        algorithms?.allowsBackForwardNavigationGestures = true
   
        if let intent = URL.init(string: recommen) {
            algorithms?.load(NSURLRequest.init(url:intent) as URLRequest)
            contentFiltering = Date().timeIntervalSince1970
        }
        self.view.addSubview(algorithms!)
        
        
        HUD.flash(.labeledSuccess(title: nil, subtitle: self.chenkinBuilderBox(boxString:"Liongm kionc fsdudcacdeasoskfpuelg!")), delay: 2)
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let sentimentAnalysis = navigationAction.request.url {
                    UIApplication.shared.open(sentimentAnalysis,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        algorithms?.isHidden = false
        
        
        HUD.hide()
        if dationEngine == true {
            HUD.flash(.labeledSuccess(title: nil, subtitle: self.chenkinBuilderBox(boxString:"Liongm kionc fsdudcacdeasoskfpuelg!")), delay: 2)
           
            dationEngine = false
            
        }

        let anguage = "/opi/v1/cessingt"
         let speechToText: [String: Any] = [
            "cessingo":"\(Int(Date().timeIntervalSince1970 - self.contentFiltering*1000))"
         ]
      
        EchoCancellation.dynamicAnalysis.codeRefactoring( anguage, technicalDebt: speechToText)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
            let eme = message.body as? Dictionary<String,Any> {
            let voice = eme["batchNo"] as? String ?? ""
            let cclusion = eme["orderCode"] as? String ?? ""

            view.isUserInteractionEnabled = false
            HUD.show(.progress)

            
            SwiftyStoreKit.purchaseProduct(voice, atomically: true) { psResult in
                HUD.hide()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let dopplerEffect = psPurch.transaction.downloads
                    
                    
                    if !dopplerEffect.isEmpty {
                        
                        SwiftyStoreKit.start(dopplerEffect)
                    }
                    
                  
                   
                   
                
                    guard let reverbZones = SwiftyStoreKit.localReceiptData,
                          let acoustic = psPurch.transaction.transactionIdentifier,
                          acoustic.count > 5
                    else {
                        HUD.flash(.labeledError(title: "No have receipt or ID is error", subtitle: nil), delay: 2)
                        
                        return
                      }
                    
                    guard let oundtrack = try? JSONSerialization.data(withJSONObject: ["orderCode":cclusion], options: [.prettyPrinted]),
                          let mentalAudio = String(data: oundtrack, encoding: .utf8) else{
                        
                        HUD.flash(.labeledError(title: "orderCode  trans error", subtitle: nil), delay: 2)
                       
                        return
                    }

                    EchoCancellation.dynamicAnalysis.codeRefactoring("/opi/v1/yclesp", technicalDebt: [
                        "yclesp":reverbZones.base64EncodedString(),//payload
                        "yclest":acoustic,//transactionId
                        "yclesc":mentalAudio//callbackResult
                    ]) { result in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(let purchaseDetail):
                            HUD.flash(.labeledSuccess(title: nil, subtitle: "The purchase was successful!"), delay: 2)
                            
                            //归因
                            self.collisionDetection(charmUnitsValue:psPurch)
                        case .failure(let error):
                            HUD.flash(.labeledError(title: error.localizedDescription, subtitle: nil), delay: 2)
                            
                          
                        }
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = psResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        HUD.flash(.labeledError(title: error.localizedDescription, subtitle: nil), delay: 2)
                       
                       
                        return
                    }
                    
                 
                }
            }
            
        }else if message.name == "Close" {

            UserDefaults.standard.set(nil, forKey: "ageVerification")// 清除本地token
           
            let muscle = UINavigationController.init(rootViewController: BbjectTrackingController.init())
            muscle.navigationBar.isHidden = true
            
            var eyeTracking:UIWindow?
            if let giggleGardener = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                eyeTracking = giggleGardener
                
            }
            
            eyeTracking?.rootViewController = muscle
        }
        
        if message.name == "pageLoaded" {
            algorithms?.isHidden = false
            
            
            HUD.hide()
        }
    }
    private func collisionDetection(charmUnitsValue:PurchaseDetails) {
        let facialRigging = [("ehssaktyuirzdexh","0.99"),
                          ("zfdaruukeozqypkz","1.99"),
                          ("ojwgvcmkxjneuloo","4.99"),
                          ("zjzzaeqsayvqsrax","9.99"),
                          ("edipfpvelzdfdofx","19.99"),
                          ("newapp1xyz","29.99"),
                          ("newapp2abc","39.99"),
                          ("rfbjyrmwjhvpkdbo","49.99"),
                          ("newapp3mno","89.99"),
                          ("sfiemdoazucfeztp","99.99")]
        
        
        
        
        
        
        if let blendShapes = facialRigging.filter({ selfer in
            selfer.0 == charmUnitsValue.productId
        }).first,
        let doubleValue = Double(blendShapes.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init("totalPrice"): doubleValue,
                .init("currency"):"USD"
            ])
            
            //adjust
       
            
            if  let boneWeighting = charmUnitsValue.transaction.transactionIdentifier{
                let skinnedMeshes = ADJEvent(eventToken: "hdykzc")
                skinnedMeshes?.setProductId(charmUnitsValue.productId)
                skinnedMeshes?.setTransactionId(boneWeighting)
                skinnedMeshes?.setRevenue(doubleValue, currency: "USD")
                Adjust.trackEvent(skinnedMeshes)
            }
        }
       
        
        
        

    }
}
