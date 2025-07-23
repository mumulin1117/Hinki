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
    static var appUITPushToken:String = ""
    static var amndexid:String = ""
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
        voiceModulation()
        echoCancellation(launchOptions: launchOptions, application: application)
        instanceSegmentation()
        volumetricRendering()
        gestureRecognition()
        // 全局配置（秒）
        SDImageCache.shared.config.maxDiskAge = 60 * 60 * 24 * 7 // 7天
     
       
       
        readsionloagin()
        
        
        
        window?.makeKeyAndVisible()
        DBNAsFoeinrLogin.skillBadges()
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
        let heatmapTracking = ADJConfig(
               appToken: "qt44cf58eeps",
               environment: ADJEnvironmentProduction
           )
        heatmapTracking?.logLevel = .verbose
        heatmapTracking?.enableSendingInBackground()
        Adjust.initSdk(heatmapTracking)
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
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let pushRemotenotiTokenVAF = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.appUITPushToken = pushRemotenotiTokenVAF
    }
}


extension AppDelegate{
    
    private func gestureRecognition()  {
        let poseEstimation = UITextField()
        poseEstimation.isSecureTextEntry = true

        if (!window!.subviews.contains(poseEstimation))  {
            window!.addSubview(poseEstimation)
            
            poseEstimation.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            poseEstimation.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            window!.layer.superlayer?.addSublayer(poseEstimation.layer)
            if #available(iOS 17.0, *) {
                
                poseEstimation.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                poseEstimation.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
    
    func voiceModulation()  {
        SwiftyStoreKit.updatedDownloadsHandler = { downloads in
            let contentURLs = downloads.compactMap {
               
                return $0.contentURL
            }
          
            SwiftyStoreKit.finishTransaction( downloads[0].transaction)
            
            
        }
        
    }
    
    func significant() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { adId in
                        DispatchQueue.main.async {
                            if let updates = adId {
                                AppDelegate.amndexid = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { adId in
                DispatchQueue.main.async {
                    if let location = adId {
                        AppDelegate.amndexid = location
                    }
                }
            }
        }
    }
}
