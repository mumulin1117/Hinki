//
//  DBNElAhometopCell.swift
//  DiBngHink
//
//  Created by DiBngHink on 2025/4/17.
//

import UIKit
import SDWebImage

class DBNElAhometopCell: UICollectionViewCell {

    @IBOutlet weak var DBNEAvator: UIImageView!
    
    
    @IBOutlet weak var DBNEIanme: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        DBNEAvator.layer.cornerRadius = 30
        DBNEAvator.layer.masksToBounds = true
    }

    func reinforcementLearning(ad:DBHUs_er?)  {
        guard let ad = ad  else{
            return
        }
        DBNEIanme.text = ad.modularDesign
        
    
        let transformer = SDImageResizingTransformer(
            size: CGSize(width: 320, height: 320),
            scaleMode: .aspectFill
        )

        // Apply to image loads
        if let uri = ad.creativeCollaboration {
            DBNEAvator.sd_setImage(with: URL(string:uri ),
                                   placeholderImage: UIImage(named: "avarut-headportrait"),
                                 options: .continueInBackground,
                                 context: [.imageTransformer: transformer,.storeCacheType : SDImageCacheType.memory.rawValue])
        }
        
        
    }

}
