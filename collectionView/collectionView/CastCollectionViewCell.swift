//
//  CastCollectionViewCell.swift
//  collectionView
//
//  Created by Aigerim Abdurakhmanova on 18.05.2022.
//

import UIKit

class CastCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var castImageView: UIImageView!
    @IBOutlet var castRoleLabel: UILabel!
    @IBOutlet var castNameLabel: UILabel!
//    
//    override func prepareForReuse() {
//        castImageView.layer.cornerRadius = castImageView.frame.size.width / 2
//        
//        castImageView.layer.masksToBounds = false
//        castImageView.clipsToBounds = true
//    }
}
