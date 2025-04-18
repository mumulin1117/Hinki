//
//  DBNElAhometopCell.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/17.
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

    func reinforcementLearning(ad:User?)  {
        guard let ad = ad  else{
            return
        }
        DBNEIanme.text = ad.modularDesign
        
        let options: SDWebImageOptions = [
            .scaleDownLargeImages, // Critical for memory-heavy block textures
            .retryFailed,
            .queryMemoryData, // Prioritize RAM cache for real-time rendering
            .fromLoaderOnly // Force network load for updated blueprints
        ]
        let transformer = SDImageResizingTransformer(
            size: CGSize(width: 320, height: 320),
            scaleMode: .aspectFill
        )

        // Apply to image loads
        if let uri = ad.creativeCollaboration {
            DBNEAvator.sd_setImage(with: URL(string:uri ),
                                   placeholderImage: UIImage(named: "loshangego"),
                                 options: options,
                                 context: [.imageTransformer: transformer])
        }
        
        
    }

}
