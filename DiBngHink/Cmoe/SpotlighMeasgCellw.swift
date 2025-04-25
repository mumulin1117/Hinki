//
//  SpotlighMeasgCellw.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/18.
//

import UIKit
import SDWebImage

class SpotlighMeasgCellw: UITableViewCell {
    @IBOutlet weak var DBNEAvator: UIImageView!
    @IBOutlet weak var DBNEIanme: UILabel!
    
    @IBOutlet weak var DBNEContenpost: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.backgroundColor = .clear
        DBNEAvator.layer.cornerRadius = 30
        DBNEAvator.layer.masksToBounds = true
    }

    func reinforcementLearning(ad:CDBMeaslistModal?)  {
        guard let ad = ad  else{
            return
        }
        DBNEIanme.text = ad.achievementSystem
        
        DBNEContenpost.text = ad.eventTriggers
        
     
        let transformer = SDImageResizingTransformer(
            size: CGSize(width: 320, height: 320),
            scaleMode: .aspectFill
        )

        // Apply to image loads
        if let uri = ad.skillBadges {
            DBNEAvator.sd_setImage(with: URL(string:uri ),
                                   placeholderImage: UIImage(named: "avarut-headportrait"),
                                 options: .continueInBackground,
                                 context: [.imageTransformer: transformer,.storeCacheType : SDImageCacheType.memory.rawValue])
        }
        
      
        
        
       
        
        
    }
 
}
class CSBONabviSweeping: UINavigationController{
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButtonTapped()

    }
    
    func actionButtonTapped() {
        self.navigationBar.isHidden = true
    }
    
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
   

        if children.count > 0  && !viewController.isMember(of:DBNNiaufo.self) {
           
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: false)
    }
}
