//
//  ViewController.swift
//  collectionView
//
//  Created by Aigerim Abdurakhmanova on 16.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genres.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "genreCell", for: indexPath) as! GenreCollectionViewCell
        
        cell.genreLabel.text = genres[indexPath.row]
        cell.genreLabel.layer.cornerRadius = 5
        cell.genreLabel.layer.borderColor = UIColor.orange.cgColor
        cell.genreLabel.layer.borderWidth = 1.0
        cell.genreLabel.lineBreakMode = .byWordWrapping
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movieTable.dataSource = self
        movieTable.delegate = self
        genreCollection.dataSource = self
        genreCollection.delegate = self
    }
    @IBOutlet var movieTable: UITableView!
    
    @IBOutlet var genreCollection: UICollectionView!
    
    var genres: [String] = ["All", "Action", "Adventure", "Animated", "Fantasy", "Comedy"]
    var sonicMovie: Movie = Movie.init(name: "Sonic", poster: UIImage.init(named: "sonic.jpg"), cast: [Cast.init(image: UIImage.init(named: "ben_schwartz.jpg"), name: "Ben Schwartz", role: "Acting"), Cast.init(image: UIImage.init(named: "jim_carrey.jpg"), name: "Jim Carrey", role: "Acting"), Cast.init(image: UIImage.init(named: "natasha_rothwell.jpg"), name: "Natasha Rothwell", role: "Acting"), Cast.init(image: UIImage.init( named: "lee_majdoub.jpg"), name: "Lee Majdoub", role: "Acting")], rating: "★ 7.5")
    var batmanMovie: Movie = Movie.init(name: "The Batman", poster: UIImage.init(named:"The_Batman_Poster.jpg"), cast: [Cast.init(image: UIImage.init(named:"robert_pattinson.jpg"), name: "Robert Pattinson", role: "Acting"), Cast.init(image: UIImage.init(named:"zoe_kravitz.jpg"), name: "Zoe Kravitz", role: "Acting"), Cast.init(image: UIImage.init(named:"jeffrey_wright.jpg"), name: "Jeffrey Wright", role: "Acting"), Cast.init(image: UIImage.init(named: "colin_farell.jpg"), name: "Colin Farell", role: "Acting")], rating: "★ 7.7")
    var movies: [Movie] = [Movie.init(name: "Sonic", poster: UIImage.init(named: "sonic.jpg"), cast: [Cast.init(image: UIImage.init(named: "ben_schwartz.jpg"), name: "Ben Schwartz", role: "Acting"), Cast.init(image: UIImage.init(named: "jim_carrey.jpg"), name: "Jim Carrey", role: "Acting"), Cast.init(image: UIImage.init(named: "natasha_rothwell.jpg"), name: "Natasha Rothwell", role: "Acting"), Cast.init(image: UIImage.init( named: "lee_majdoub.jpg"), name: "Lee Majdoub", role: "Acting")], rating: "★ 7.5"), Movie.init(name: "The Batman", poster: UIImage.init(named:"The_Batman_Poster.jpg"), cast: [Cast.init(image: UIImage.init(named:"robert_pattinson.jpg"), name: "Robert Pattinson", role: "Acting"), Cast.init(image: UIImage.init(named:"zoe_kravitz.jpg"), name: "Zoe Kravitz", role: "Acting"), Cast.init(image: UIImage.init(named:"jeffrey_wright.jpg"), name: "Jeffrey Wright", role: "Acting"), Cast.init(image: UIImage.init(named: "colin_farell.jpg"), name: "Colin Farell", role: "Acting")], rating: "★ 7.7")]
    //var movies: [Movie] = [sonicMovie, batmanMovie]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! MovieTableViewCell
        cell.posterImageView.image = movies[indexPath.row].poster
        cell.movieRatingLabel.text =  movies[indexPath.row].rating
        cell.posterImageView.layer.cornerRadius = 10
        cell.posterImageView.clipsToBounds = true
        cell.movieRatingLabel.layer.masksToBounds = true
        cell.movieRatingLabel.layer.cornerRadius = 5
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //movieTable.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let destination = segue.destination as? detailsViewController {
            destination.image = movies[(movieTable.indexPathForSelectedRow?.row)!].poster
            destination.cast = movies[(movieTable.indexPathForSelectedRow?.row)!].cast
            destination.ratingText = movies[(movieTable.indexPathForSelectedRow?.row)!].rating
            movieTable.deselectRow(at: movieTable.indexPathForSelectedRow!, animated: true)
        }
    }

}
