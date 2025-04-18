//
//  SpotlighMeasgCellw.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/18.
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
        DBNEAvator.layer.cornerRadius = 20
        DBNEAvator.layer.masksToBounds = true
    }

    func reinforcementLearning(ad:HomeDymModal?)  {
        guard let ad = ad  else{
            return
        }
        DBNEIanme.text = ad.meshDeformation
        
        DBNEContenpost.text = ad.animationSequencing
        
        
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
        if let uri = ad.particleEffects {
            DBNEAvator.sd_setImage(with: URL(string:uri ),
                                   placeholderImage: UIImage(named: "loshangego"),
                                 options: options,
                                 context: [.imageTransformer: transformer])
        }
        
      
        
        
       
        
        
    }
 
}
