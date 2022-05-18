//
//  Movies.swift
//  collectionView
//
//  Created by Aigerim Abdurakhmanova on 17.05.2022.
//

import Foundation
import UIKit

struct Movie {
    var name: String?
    var poster: UIImage?
    var cast: [Cast]?
}
struct Cast {
    var image: UIImage?
    var name: String?
}
