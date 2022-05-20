//
//  MovieTableViewCell.swift
//  collectionView
//
//  Created by Aigerim Abdurakhmanova on 17.05.2022.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet var movieRatingLabel: UILabel!
    
    @IBOutlet var posterImageView: UIImageView!
}
