//
//  detailsViewController.swift
//  collectionView
//
//  Created by Aigerim Abdurakhmanova on 17.05.2022.
//

import UIKit

class detailsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CastCollectionViewCell
        cell.castImageView.image = cast?[indexPath.row].image
        cell.castNameLabel.text = cast?[indexPath.row].name
        cell.castRoleLabel.text = cast?[indexPath.row].role
        cell.castImageView.layer.cornerRadius = cell.castImageView.frame.size.height / 2
        cell.castImageView.clipsToBounds = true
        cell.castNameLabel.lineBreakMode = .byWordWrapping
        //cell.castImageView.layer.cornerRadius = 50
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if cast!.count < 1 {return 1} //если нет фотографий актеров то вывести пустую ячейку
        else {return cast!.count}
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/4, height: 165)
    }
    var ratingText: String!
    @IBOutlet var movieRatingLabel: UILabel!
    var cast: [Cast]?
    var image: UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        posterImageView.image = image
        movieRatingLabel.text = ratingText
        movieRatingLabel.layer.masksToBounds = true
        movieRatingLabel.layer.cornerRadius = 5
        castCollectionView.dataSource = self
        castCollectionView.delegate = self
        castCollectionView.collectionViewLayout = layout
    }
    
    @IBOutlet var castCollectionView: UICollectionView!
    @IBOutlet var posterImageView: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
