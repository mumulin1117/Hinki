//
//  ModularDesign ntroller.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/6/27.
//

import UIKit
//web 
import Alamofire
import SwiftyStoreKit
import AdjustSdk
import WebKit
import FBSDKCoreKit
import PKHUD
class StormShenaniganController: UIViewController ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var snickerSculptor:WKWebView?
    var prankPhysicist:TimeInterval = Date().timeIntervalSince1970
    
    private  var jesterJournalist = false
    private var gagGeologist:String
    
    init(riddleRanger:String,mischiefMeteorologist:Bool) {
        gagGeologist = riddleRanger
        
        jesterJournalist = mischiefMeteorologist
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        snickerSculptor?.configuration.userContentController.add(self, name: "rechargePay")
        snickerSculptor?.configuration.userContentController.add(self, name: "Close")
        snickerSculptor?.configuration.userContentController.add(self, name: "pageLoaded")
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        snickerSculptor?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
        HUD.show(.progress)
        
        let comedyNeuralNet = UIImageView.init(frame:UIScreen.main.bounds)
        comedyNeuralNet.contentMode = .scaleAspectFill
        comedyNeuralNet.image = UIImage(named: "koinbah")
        view.addSubview(comedyNeuralNet)
        
        
       
        
        
        if jesterJournalist == true {
            comedyNeuralNet.image = UIImage(named: "jiMucookl")
            let  punProcessor = UIButton.init()
            punProcessor.backgroundColor = .black
            punProcessor.layer.cornerRadius = 26
            punProcessor.layer.masksToBounds = true
            punProcessor.setTitle("Quickly Log", for: .normal)
            punProcessor.setTitleColor(UIColor.white, for: .normal)
            punProcessor.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .black)
           
            punProcessor.isUserInteractionEnabled = false
            view.addSubview(punProcessor)
           
            punProcessor.translatesAutoresizingMaskIntoConstraints = false

            let guide = self.view.safeAreaLayoutGuide

            NSLayoutConstraint.activate([
                punProcessor.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                punProcessor.heightAnchor.constraint(equalToConstant: 52),
                punProcessor.widthAnchor.constraint(equalToConstant: 335),
                punProcessor.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -85)
            ])
        }else{
            let sharealNet = UIImageView.init(frame:UIScreen.main.bounds)
            sharealNet.contentMode = .scaleAspectFill
            sharealNet.image = UIImage(named: "loshangego")
            view.addSubview(sharealNet)
            sharealNet.frame.size = CGSize(width: 100, height: 100)
            sharealNet.center = CGPoint(x: view.center.x, y: view.center.y - 100)
            
            let jsoni = UILabel.init(frame: CGRect.init(x: 0, y: sharealNet.frame.maxY + 20, width: 100, height: 50))
            jsoni.text = "Hinki"
            jsoni.textAlignment = .center
            jsoni.center.x = view.center.x
            jsoni.font = UIFont.systemFont(ofSize: 22, weight: .bold)
            
            view.addSubview(jsoni)
        }
        
        
        
         
        let jokeJuggler = WKWebViewConfiguration()
        jokeJuggler.allowsAirPlayForMediaPlayback = false
        jokeJuggler.allowsInlineMediaPlayback = true
        jokeJuggler.preferences.javaScriptCanOpenWindowsAutomatically = true
        jokeJuggler.mediaTypesRequiringUserActionForPlayback = []
        jokeJuggler.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        snickerSculptor = WKWebView.init(frame: UIScreen.main.bounds, configuration: jokeJuggler)
        snickerSculptor?.isHidden = true
        snickerSculptor?.translatesAutoresizingMaskIntoConstraints = false
        snickerSculptor?.scrollView.alwaysBounceVertical = false
        
        snickerSculptor?.scrollView.contentInsetAdjustmentBehavior = .never
        snickerSculptor?.navigationDelegate = self
        
        snickerSculptor?.uiDelegate = self
        snickerSculptor?.allowsBackForwardNavigationGestures = true
   
        if let trickTrapper = URL.init(string: gagGeologist) {
            snickerSculptor?.load(NSURLRequest.init(url:trickTrapper) as URLRequest)
            prankPhysicist = Date().timeIntervalSince1970
        }
        self.view.addSubview(snickerSculptor!)
        
        
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
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        snickerSculptor?.isHidden = false
        
        
        HUD.hide()
        if jesterJournalist == true {
            HUD.flash(.labeledSuccess(title: nil, subtitle: self.chenkinBuilderBox(boxString:"Liongm kionc fsdudcacdeasoskfpuelg!")), delay: 2)
           
            jesterJournalist = false
            
        }

        let illusionInvestigator = "/opi/v1/****t"
         let quirkQuark: [String: Any] = [
            "**o":"\(Int(Date().timeIntervalSince1970 - self.prankPhysicist*1000))"
         ]
      
        EchoCancellation.goofyGradient.sillySynapse( illusionInvestigator, pranktopia: quirkQuark)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == "rechargePay",
            let whimsyWatchmaker = message.body as? Dictionary<String,Any> {
            let journeyHighlights = whimsyWatchmaker["batchNo"] as? String ?? ""
            let orderCode = whimsyWatchmaker["orderCode"] as? String ?? ""

            view.isUserInteractionEnabled = false
            HUD.show(.progress)

            
            SwiftyStoreKit.purchaseProduct(journeyHighlights, atomically: true) { psResult in
                HUD.hide()
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                  
                   
                   
                
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier,
                          gettransID.count > 5
                    else {
                        HUD.flash(.labeledError(title: "No have receipt or ID is error", subtitle: nil), delay: 2)
                        
                        return
                      }
                    
                    guard let jsonData = try? JSONSerialization.data(withJSONObject: ["orderCode":orderCode], options: [.prettyPrinted]),
                          let orderCodejsonString = String(data: jsonData, encoding: .utf8) else{
                        
                        HUD.flash(.labeledError(title: "orderCode  trans error", subtitle: nil), delay: 2)
                       
                        return
                    }

                    EchoCancellation.goofyGradient.sillySynapse("/opi/v1/****p", pranktopia: [
                        "**p":ticketData.base64EncodedString(),//payload
                        "**t":gettransID,//transactionId
                        "**c":orderCodejsonString//callbackResult
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

            UserDefaults.standard.set(nil, forKey: "absurdityEngine")// 清除本地token
           
            let comedyConductor = UINavigationController.init(rootViewController: BbjectTrackingController.init())
            comedyConductor.navigationBar.isHidden = true
            
            var whimsyWidget:UIWindow?
            if let giggleGardener = (UIApplication.shared.connectedScenes
                .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
                .windows
                .first(where: \.isKeyWindow)  {
                whimsyWidget = giggleGardener
                
            }
            
            whimsyWidget?.rootViewController = comedyConductor
        }
        
        if message.name == "pageLoaded" {
            snickerSculptor?.isHidden = false
            
            
            HUD.hide()
        }
    }
    private func collisionDetection(charmUnitsValue:PurchaseDetails) {
        let totlavalurPrice = [("ehssaktyuirzdexh","0.99"),
                          ("zfdaruukeozqypkz","1.99"),
                          ("ojwgvcmkxjneuloo","4.99"),
                          ("zjzzaeqsayvqsrax","9.99"),
                          ("edipfpvelzdfdofx","19.99"),
                          ("newapp1xyz","29.99"),
                          ("newapp2abc","39.99"),
                          ("rfbjyrmwjhvpkdbo","49.99"),
                          ("newapp3mno","89.99"),
                          ("sfiemdoazucfeztp","99.99")]
        
        
        
        
        
        
        if let valurPriceString = totlavalurPrice.filter({ selfer in
            selfer.0 == charmUnitsValue.productId
        }).first,
        let doubleValue = Double(valurPriceString.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init("totalPrice"): doubleValue,
                .init("currency"):"USD"
            ])
            
            //adjust
       
            
            if  let alyTransactionIdentifier = charmUnitsValue.transaction.transactionIdentifier{
                let event = ADJEvent(eventToken: "hdykzc")
                event?.setProductId(charmUnitsValue.productId)
                event?.setTransactionId(alyTransactionIdentifier)
                event?.setRevenue(doubleValue, currency: "USD")
                Adjust.trackEvent(event)
            }
        }
       
        
        
        

    }
}
