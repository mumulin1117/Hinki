//
//  AppDelegate.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/17.
//

import UIKit
@main



class AppDelegate: UIResponder, UIApplicationDelegate {
//当前登陆账户
    static var loguserMofdal:User?{
        
        get{
            if let usedloging = UserDefaults.standard.object(forKey: "loginUserDBN") as? [String:String] {
                return User.init(dic: usedloging)
            }
            return nil
        }set{
            if let newvakf = newValue {
                
                UserDefaults.standard.set(newvakf.modoalTRansforDic(), forKey: "loginUserDBN")
            }
            
        }
        
    }
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        
        
        
        if AppDelegate.loguserMofdal != nil {
            window?.rootViewController = DBNAsFore.init()
        }else{
            let clioke = UINavigationController.init(rootViewController: DBNAsFoeinrLogin.init())
            clioke.navigationBar.isHidden = true
            
            window?.rootViewController = clioke
        }
       
        
        
        
        
        window?.makeKeyAndVisible()
        DBNAsFoeinrLogin.skillBadges()
        return true
    }


}

