//
//  BusinessCell.swift
//  Yelp
//
//  Created by Sanaya Sanghvi on 2/4/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet var thumbImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var distanceLabel: UILabel!
    
    @IBOutlet var ratingImage: UIImageView!
    
    @IBOutlet var reviewsCountLabel: UILabel!
    
    @IBOutlet var addressLabel: UILabel!
    
    @IBOutlet var categoriesLabel: UILabel!
    
    var business: Business! {
        
        didSet {
            nameLabel.text = business.name
            thumbImageView.setImageWithURL(business.imageURL!)
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            ratingImage.setImageWithURL(business.ratingImageURL!)
            distanceLabel.text = business.distance
        
            
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
