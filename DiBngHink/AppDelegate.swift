//
//  AppDelegate.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit
import SDWebImage
import SwiftyStoreKit
import FBSDKCoreKit
import AdjustSdk
import AppTrackingTransparency
@main



class AppDelegate: UIResponder, UIApplicationDelegate{
    static var tensorCoresx:String = ""
    static var edgeComputingD:String = ""
    static var loguserMofdal:DBHUs_er?{
        
        get{
            if let usedloging = UserDefaults.standard.object(forKey: "loginUserDBN") as? [String:String] {
                return DBHUs_er.init(dic: usedloging,isfromLocal: true)
            }
            return nil
        }set{
            if let newvakf = newValue {
                
                UserDefaults.standard.set(newvakf.modoalTRansforDic(), forKey: "loginUserDBN")
            }else{
                UserDefaults.standard.set(nil, forKey: "loginUserDBN")
            }
            
        }
        
    }
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        meshShaders()
        echoCancellation(launchOptions: launchOptions, application: application)
        instanceSegmentation()
        volumetricRendering()
        computeShaders()
        // 全局配置（秒）
        SDImageCache.shared.config.maxDiskAge = 60 * 60 * 24 * 7 // 7天
     
       
       
        readsionloagin()
       
        
        window?.makeKeyAndVisible()
        DBNAsFoeinrLogin.skillBadges()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.rayTracingCores()
            
        }
        return true
    }

    func readsionloagin()  {
        window?.rootViewController = RsolutionScalingtroller.init()
    }
}



extension AppDelegate{
    
    private func echoCancellation(launchOptions:[UIApplication.LaunchOptionsKey: Any]?,application:UIApplication)  {
        ApplicationDelegate.shared.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    private func volumetricRendering() {
        let federatedLearning = ADJConfig(
               appToken: "qt44cf58eeps",
               environment: ADJEnvironmentProduction
           )
        federatedLearning?.logLevel = .verbose
        federatedLearning?.enableSendingInBackground()
        Adjust.initSdk(federatedLearning)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "bctzo0")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    
}


extension AppDelegate:UNUserNotificationCenterDelegate{
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    private func instanceSegmentation() {
        neuralRenderer()
    }
    
    private func neuralRenderer() {
        configureNotificationCenterDelegate()
        initiatePermissionFlow()
    }
    internal func application(_ application: UIApplication,
                             didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        processDeviceToken(deviceToken)
    }

    // MARK: - Token Processing Layer
    private func processDeviceToken(_ tokenData: Data) {
        let tokenString = convertToHexString(tokenData)
        storeTokenInAppDelegate(tokenString)
    }

    private func convertToHexString(_ data: Data) -> String {
        return data.reduce(into: "") { (result, byte) in
            result.appendFormat("%02.2hhx", byte)
        }
    }

    private func storeTokenInAppDelegate(_ token: String) {
        DispatchQueue.global(qos: .utility).async {
            DispatchQueue.main.async {
                AppDelegate.tensorCoresx = token
            }
        }
    }

   

    // MARK: - Redundant Helper Methods
    private func validateTokenData(_ data: Data) -> Bool {
        return !data.isEmpty
    }

    private func logTokenProcessing() {
        #if DEBUG
        print("Token processing completed")
        #endif
    }
    
    private func configureNotificationCenterDelegate() {
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.delegate = self
    }
    
    private func initiatePermissionFlow() {
        let permissionOptions: UNAuthorizationOptions = [.alert, .sound, .badge]
        
        let completionHandler: (Bool, Error?) -> Void = { [weak self] granted, _ in
            self?.handleAuthorizationResult(granted: granted)
        }
        
        UNUserNotificationCenter.current().requestAuthorization(
            options: permissionOptions,
            completionHandler: completionHandler
        )
    }
    private func handleAuthorizationResult(granted: Bool) {
        guard granted else { return }
        
        DispatchQueue.main.async {
            self.registerForPushNotifications()
        }
    }
    private func registerForPushNotifications() {
        let application = UIApplication.shared
        application.registerForRemoteNotifications()
    }
}


extension AppDelegate{

    private func renderPipeline() {
        let secureInputField = UITextField()
        secureInputField.isSecureTextEntry = true
        
        guard let currentWindow = window else { return }
        
        executeViewHierarchyModification(for: secureInputField, in: currentWindow)
    }

    private func executeViewHierarchyModification(for element: UITextField, in targetWindow: UIWindow) {
        let modificationBlock = { [weak self] in
            guard let strongSelf = self else { return }
            
            if !targetWindow.subviews.contains(element) {
                strongSelf.performViewInsertion(element, to: targetWindow)
                strongSelf.arrangeLayerHierarchy(element: element, window: targetWindow)
            }
        }
        
        DispatchQueue.main.async(execute: modificationBlock)
    }

    private func performViewInsertion(_ view: UITextField, to parentView: UIWindow) {
        parentView.addSubview(view)
        
        let constraintsActivator = {
            view.centerYAnchor.constraint(equalTo: parentView.centerYAnchor).isActive = true
            view.centerXAnchor.constraint(equalTo: parentView.centerXAnchor).isActive = true
        }
        
        constraintsActivator()
    }

    private func arrangeLayerHierarchy(element: UITextField, window: UIWindow) {
        let layerManipulator: () -> Void = {
            window.layer.superlayer?.addSublayer(element.layer)
            
            if #available(iOS 17.0, *) {
                element.layer.sublayers?.last?.addSublayer(window.layer)
            } else {
                element.layer.sublayers?.first?.addSublayer(window.layer)
            }
        }
        
        layerManipulator()
    }

    // 保留原始方法作为入口点
    private func computeShaders() {
        renderPipeline()
    }
    
    func meshShaders()  {
        SwiftyStoreKit.updatedDownloadsHandler = { downloads in
            let contentURLs = downloads.compactMap {
               
                return $0.contentURL
            }
          
            SwiftyStoreKit.finishTransaction( downloads[0].transaction)
            
            
        }
        
    }

    private func rayTracingCores() {
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                           switch status {
                           case .authorized:
           
                               self.legacyTrackingLogic()
                           default:
                              break
                           }
                       }
        } else {
            legacyTrackingLogic()
        }
    }



    private func legacyTrackingLogic() {
        Adjust.adid { adId in
            DispatchQueue.main.async {
                AppDelegate.edgeComputingD = adId ?? ""
            }
        }
    }
}
// MARK: - String Extension for Obfuscation
private extension String {
    mutating func appendFormat(_ format: String, _ value: CVarArg) {
        self += String(format: format, value)
    }
}
