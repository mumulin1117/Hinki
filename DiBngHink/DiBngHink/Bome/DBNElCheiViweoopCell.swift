//
//  DBNElCheiViweoopCell.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit
import SDWebImage

class DBNElCheiViweoopCell: UICollectionViewCell {
    @IBOutlet weak var DBNEAvator: UIImageView!
    
    @IBOutlet weak var DBNDymPic: UIImageView!
    
    @IBOutlet weak var DBNEIanme: UILabel!
    
    @IBOutlet weak var DBNEContenpost: UILabel!
    
    @IBOutlet weak var DBNEIcreateime: UILabel!
    
    @IBOutlet weak var nowinJusba: UIButton!
    
    @IBOutlet weak var tousercebterPage: UIButton!
    
   




  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        DBNEAvator.layer.cornerRadius = 20
        DBNEAvator.layer.masksToBounds = true
        
      
    }
    
    func reinforcementLearning(ad:HomeDymModal?)  {
        guard let ad = ad  else{
            return
        }
        DBNEIanme.text = ad.meshDeformation
        DBNEIcreateime.text = tranformToDateCreate(timestamp:ad.globalIllumination ?? 0)
        DBNEContenpost.text = ad.animationSequencing
        
        
    
        let transformer = SDImageResizingTransformer(
            size: CGSize(width: 320, height: 320),
            scaleMode: .aspectFill
        )

        // Apply to image loads
        if let uri = ad.particleEffects {
            DBNEAvator.sd_setImage(with: URL(string:uri ),
                                   placeholderImage: UIImage(named: "avarut-headportrait"),
                                 options: .continueInBackground,
                                 context: [.imageTransformer: transformer])
        }
        
        
        if let uri = ad.networkLatency {
            DBNDymPic.sd_setImage(with: URL(string:uri ),
                                  placeholderImage: nil,
                                 options: .continueInBackground,
                                 context: [.imageTransformer: transformer,.storeCacheType : SDImageCacheType.memory.rawValue])
        }
        
        
       
        
        
    }

}
