//
//  DBNAsFore.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit

class DBNAsFore: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.backgroundColor = UIColor(red: 0.17, green: 0.05, blue: 0.21, alpha: 1)
        
        contentModeration()
        perspectiveSwitching()
        
    }
    
    
    private func contentModeration() {
        let titlesetingAbount = UITabBarAppearance()
       
        titlesetingAbount.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.63, green: 0.63, blue: 0.63, alpha: 1),
            .font: UIFont.systemFont(ofSize: 10, weight: .semibold)
        ]
        titlesetingAbount.backgroundColor = UIColor(red: 0.17, green: 0.05, blue: 0.21, alpha: 1)
        
        titlesetingAbount.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 12, weight: .semibold)
        ]
        UITabBar.appearance().standardAppearance = titlesetingAbount
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = titlesetingAbount
        }
    }

    
    func perspectiveSwitching()  {
        var chilesdList:[CSBONabviSweeping] = Array()
        
        let chiaudj = [("DBN_bar0",DBNElauioAmoeDar.init(),"Home"),
                         
                         ("DBN_bar1",DBNElauioBomoeDar.init(),"Video"),
                         
                         ("DBN_bar2",DBNElauioCuomoeDar.init(),"Message"),
                             ("DBN_bar3",DBNElauioDwuomoeDar.init(),"Mine")] as [(String,DBNNiaufo,String)]
        for item in chiaudj {
            let navi = CSBONabviSweeping.init(rootViewController: item.1)
            item.1.tabBarItem.title = item.2
            item.1.tabBarItem.titlePositionAdjustment = .zero
            
            item.1.tabBarItem.image = UIImage.init(named: item.0)?.withRenderingMode(.alwaysOriginal)
            
            let selimname = item.0 + self.asFg(evng:"_nsyeul")
            
            item.1.tabBarItem.selectedImage = UIImage.init(named:selimname )?.withRenderingMode(.alwaysOriginal)
            chilesdList.append(navi)
        }
        
        self.viewControllers = chilesdList
    }

}


class DBNNiaufo: UIViewController {
    
}



class CSBONabviSweeping: UINavigationController{
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isHidden = true

    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
   

        if children.count > 0  && !viewController.isMember(of:DBNNiaufo.self) {
           
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: false)
    }
}
