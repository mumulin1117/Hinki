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
    private var brickSelectionIndicator: UIView = {
        let indicator = UIView(frame: CGRect(x: 0, y: 0, width: 28, height: 6))
        indicator.backgroundColor = UIColor(named: "BrickPrimary") // 使用 Asset 颜色
        indicator.layer.cornerRadius = 3
        indicator.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        return indicator
        
    }()
        
    // 方法：初始化积木 TabBar 样式
      
    func setupBrickTabBar() {
        // 确保不影响原生 TabBar 布局
        guard let tabBarItems = tabBar.items else { return }
        
        // 动态调整 TabBar 高度（适应积木风格）
        tabBar.layer.shadowColor = UIColor.black.cgColor
        tabBar.layer.shadowOpacity = 0.1
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -3)
        
        // 添加积木形状的选中指示器
        tabBar.addSubview(brickSelectionIndicator)
        
        
        
    }
    private func contentModeration() {
        let jsiu = stopAttentionAnimation()
        
        jsiu.stackedLayoutAppearance.selected.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 12, weight: .semibold)
        ]
        UITabBar.appearance().standardAppearance = jsiu
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = jsiu
        }
    }
    
    
    func stopAttentionAnimation()-> UITabBarAppearance{
        let titlesetingAbount = UITabBarAppearance()
       
        titlesetingAbount.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor(red: 0.63, green: 0.63, blue: 0.63, alpha: 1),
            .font: UIFont.systemFont(ofSize: 10, weight: .semibold)
        ]
        titlesetingAbount.backgroundColor = UIColor(red: 0.17, green: 0.05, blue: 0.21, alpha: 1)
        return titlesetingAbount
    }
    private func updateBrickIndicatorPosition(animated: Bool) {
          guard 
                let tabBarItems = tabBar.items,
                selectedIndex < tabBarItems.count else { return }
          
          let itemWidth = tabBar.bounds.width / CGFloat(tabBarItems.count)
          let xPosition = itemWidth * CGFloat(selectedIndex) + (itemWidth / 2 - 14)
          
          if animated {
              UIView.animate(withDuration: 0.25, delay: 0, options: .curveEaseInOut) {
                  self.brickSelectionIndicator.frame.origin.x = xPosition
                  self.brickSelectionIndicator.transform = CGAffineTransform(scaleX: 1.1, y: 1)
              } completion: { _ in
                  UIView.animate(withDuration: 0.15) {
                      self.brickSelectionIndicator.transform = .identity
                  }
              }
          } else {
              brickSelectionIndicator.frame.origin.x = xPosition
          }
     
    }
    func perspectiveSwitching()  {
        var chilesdList:[CSBONabviSweeping] = Array()
        
        let Jad = [("DBN_bar0",DBNElauioAmoeDar.init(),"Home"),
                         
                         ("DBN_bar1",DBNElauioBomoeDar.init(),"Video"),
                         
                         ("DBN_bar2",DBNElauioCuomoeDar.init(),"Message"),
                             ("DBN_bar3",DBNElauioDwuomoeDar.init(),"Mine")] as [(String,DBNNiaufo,String)]
        for item in Jad {
            let navi = CSBONabviSweeping.init(rootViewController: item.1)
            item.1.tabBarItem.title = item.2
            item.1.tabBarItem.titlePositionAdjustment = .zero
            
            item.1.tabBarItem.image = UIImage.init(named: item.0)?.withRenderingMode(.alwaysOriginal)
            
            let selimname = item.0 + self.chenkinBuilderBox(boxString:"_nsyeul")
            
            item.1.tabBarItem.selectedImage = UIImage.init(named:selimname )?.withRenderingMode(.alwaysOriginal)
            chilesdList.append(navi)
        }
        
        self.viewControllers = chilesdList
    }

}


class DBNNiaufo: UIViewController {
    
}



