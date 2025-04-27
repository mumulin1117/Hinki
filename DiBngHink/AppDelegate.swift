//
//  AppDelegate.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit
import SDWebImage
@main



class AppDelegate: UIResponder, UIApplicationDelegate {

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
        
        // 全局配置（秒）
        SDImageCache.shared.config.maxDiskAge = 60 * 60 * 24 * 7 // 7天
     
       
       
        readsionloagin()
        
        
        
        window?.makeKeyAndVisible()
        DBNAsFoeinrLogin.skillBadges()
        return true
    }


    
    func readsionloagin()  {
        if AppDelegate.loguserMofdal != nil {
            window?.rootViewController = DBNAsFore.init()
        }else{
            let clioke = UINavigationController.init(rootViewController: DBNAsFoeinrLogin.init())
            clioke.navigationBar.isHidden = true
            
            window?.rootViewController = clioke
        }
       
    }
}

