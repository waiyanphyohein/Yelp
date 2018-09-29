//
//  BusinessCell.swift
//  Yelp
//
//  Created by WaiYanPhyo Hein on 9/26/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var DistanceLabel: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var RatingLabel: UILabel!
    @IBOutlet weak var RatingImageView: UIImageView!
    @IBOutlet weak var CategoryLabel: UILabel!
    @IBOutlet weak var LocationLabel: UILabel!
    @IBOutlet weak var ThumbImageView: UIImageView!
    var business: Business! {
        didSet{
            TitleLabel.text = business.name;
            ThumbImageView.setImageWith(business.imageURL!);
            CategoryLabel.text = business.categories
            LocationLabel.text = business.address
            RatingLabel.text = "\(business.reviewCount!) Reviews";
            RatingImageView.image = (business.ratingImage)
            DistanceLabel.text = business.distance
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ThumbImageView.layer.cornerRadius = 3
        ThumbImageView.clipsToBounds = true;
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
