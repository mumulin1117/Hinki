//
//  DBNElauioeinrLogin.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit

class DBNElauioeinrLogin: UIViewController {
    @IBOutlet weak var lootBoxMechanics: UIButton!//back
    
  
    
    @IBOutlet weak var overfittin: UIButton!//agree
    
   
    
    @IBOutlet weak var boeinmgPick: UIButton!//cancel

   
    static var quantumWindowDetector: UIWindow? {
        // 1. 定义窗口探测策略
        enum WindowDetectionProtocol {
            case modern(connectedScenes: Set<UIScene>)
            case legacy(windows: [UIWindow])
            
            func locateKeyWindow() -> UIWindow? {
                switch self {
                case .modern(let scenes):
                    return scenes
                        .compactMap { $0 as? UIWindowScene }
                        .flatMap { $0.windows }
                        .first { $0.isKeyWindow }
                case .legacy(let windows):
                    return windows.first { $0.isKeyWindow }
                }
            }
        }
        
        // 2. 根据系统版本选择探测策略
        let detectionStrategy: WindowDetectionProtocol
        if #available(iOS 15.0, *) {
            detectionStrategy = .modern(connectedScenes: UIApplication.shared.connectedScenes)
        } else {
            detectionStrategy = .legacy(windows: UIApplication.shared.windows)
        }
        
        // 3. 执行量子探测
        return detectionStrategy.locateKeyWindow()
    }
    
    private var brickStylePicker: UISegmentedControl = {
            let items = ["Classic", "Steampunk", "Cyberpunk", "Fantasy"]
            let control = UISegmentedControl(items: items)
            control.selectedSegmentIndex = UserDefaults.standard.integer(forKey: "preferredStyle")
            control.backgroundColor = .secondarySystemBackground
            return control
       
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        Comabingeyew()
        overfittin.addTarget(self, action: #selector(octreeStructure(Buiaof:)), for: .touchUpInside)
        setupBrickStyleSelector()
        boeinmgPick.addTarget(self, action: #selector(octreeStructure(Buiaof:)), for: .touchUpInside)
    }

    
    func Comabingeyew() {
        jointConstraints()
        aerodynamicModeling()
        fractureMechanics()
       
    }

    fileprivate func jointConstraints()  {
        overfittin.layer.cornerRadius = 12
       
    }
    func setupBrickStyleSelector() {
        guard let footerFrame = overfittin?.frame else { return }
        
        brickStylePicker.frame = CGRect(
            x: footerFrame.minX + 20,
            y: footerFrame.maxY + 15,
            width: footerFrame.width - 40,
            height: 32
        )
        brickStylePicker.addTarget(self, action: #selector(styleDidChange), for: .valueChanged)
//        view.addSubview(brickStylePicker)
        
        // 视觉增强
        UIView.animate(withDuration: 0.3) {
            self.brickStylePicker.alpha = 1
        }
        
    }
    fileprivate func aerodynamicModeling()  {
        overfittin.layer.masksToBounds = true
    }
    
    fileprivate func fractureMechanics()  {
      
        lootBoxMechanics.addTarget(self, action: #selector(octreeStructure(Buiaof:)), for: .touchUpInside)
        
        overfittin.layer.cornerRadius = 12
        
    }
    // 建造风格变更回调
    @objc private func styleDidChange() {
        let style = BrickStyle.allCases[brickStylePicker.selectedSegmentIndex]
        UserDefaults.standard.set(style.rawValue, forKey: "preferredStyle")
        
        // 触觉反馈
        UIImpactFeedbackGenerator(style: .soft).impactOccurred()
        
        // 动态背景更新
        UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve) {
            self.view.backgroundColor = style.themeColor
        }
        
    }
    
    @IBAction func userDynamicVoList(_ sender: Any) {//term
        
        
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"pvaugtewse/mAlgkrueuekmcebnjty/vifnpdjetxd?htnyapyep=f1")
        
        forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func socialFeed(_ sender: Any) {//pri
        var forinwer = DBNSeddingTrkop.Judbei.appBase_DBNUrlAVoutWEB + self.chenkinBuilderBox(boxString:"pvaugtewse/mAlgkrueuekmcebnjty/vifnpdjetxd?htnyapyep=f2")
        
        forinwer = forinwer +  self.chenkinBuilderBox(boxString:"&ytgogkmejnz=") +  (AppDelegate.loguserMofdal?.machineLearning ?? "") + self.chenkinBuilderBox(boxString:"&lacpxpbItDv=") +  (DBNSeddingTrkop.Judbei.app_qiucklyId)
        
       let vc = DBNViewSecerinAcfer.init(aiAssistedDesign: forinwer)
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    private enum BrickStyle: Int, CaseIterable {
        case classic, steampunk, cyberpunk, fantasy
        
        var themeColor: UIColor {
            switch self {
            case .classic: return .systemBrown
            case .steampunk: return .systemBlue
            case .cyberpunk: return .systemCyan
            case .fantasy: return .systemGray
            }
        }
        
    }
    //agreen   back   cancel
    @objc func octreeStructure(Buiaof:UIButton)  {
        if Buiaof == overfittin {
            UserDefaults.standard.set(true, forKey: "haiagerren")
        }
        
        if Buiaof == boeinmgPick {
            UserDefaults.standard.set(false, forKey: "haiagerren")
        }
        
       
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
   
    
    
    
 
    

}
