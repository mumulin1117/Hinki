//
//  DBNElBoardtopCell.swift
//  DiBngHink
//
//  Created by mumu on 2025/4/17.
//

import UIKit
import SDWebImage
class DBNElBoardtopCell: UICollectionViewCell {
    @IBOutlet weak var DBNEAvator: UIImageView!
    
    @IBOutlet weak var DBNDymPic: UIImageView!
    
    @IBOutlet weak var DBNEIanme: UILabel!
    
    @IBOutlet weak var DBNEContenpost: UILabel!
    
    @IBOutlet weak var DBNEIcreateime: UILabel!
    
    func reinforcementLearning(ad:HomeDymModal?)  {
        guard let ad = ad  else{
            return
        }
        DBNEIanme.text = ad.meshDeformation
        DBNEIcreateime.text = tranformToDateCreate(timestamp:ad.globalIllumination ?? 0)
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
        
        
        if let uri = ad.rayTracing?.first {
            DBNDymPic.sd_setImage(with: URL(string:uri ),
                                   placeholderImage: UIImage(named: "loshangego"),
                                 options: options,
                                 context: [.imageTransformer: transformer])
        }
        
        
       
        
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        DBNEAvator.layer.cornerRadius = 20
        DBNEAvator.layer.masksToBounds = true
        
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
    }

}


extension NSObject{
    func tranformToDateCreate(timestamp:Int) -> String {
        let timestamp = 1712345678 // Example Unix timestamp

        let date = Date(timeIntervalSince1970: TimeInterval(timestamp))
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM d, yyyy 'at' h:mm a" // April 4, 2024 at 3:34 PM

        let englishDate = formatter.string(from: date)
        return englishDate
    }
}
