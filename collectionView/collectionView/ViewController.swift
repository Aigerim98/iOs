//
//  ViewController.swift
//  collectionView
//
//  Created by Aigerim Abdurakhmanova on 16.05.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movieTable.dataSource = self
        movieTable.delegate = self
    }
    @IBOutlet var movieTable: UITableView!
    
    var movies: [Movie] = [Movie.init(name: "Sonic", poster: UIImage.init(named: "sonic.jpg"), cast: [Cast.init(image: UIImage.init(named: "ben_schwartz.jpg"), name: "Ben Schwartz"), Cast.init(image: UIImage.init(named: "jim_carrey.jpg"), name: "Jim Carrey"), Cast.init(image: UIImage.init(named: "natasha_rothwell.jpg"), name: "Natasha Rothwell"), Cast.init(image: UIImage.init( named: "lee_majdoub.jpg"), name: "Lee Majdoub")]), Movie.init(name: "The Batman", poster: UIImage.init(named:"The_Batman_Poster.jpg"), cast: nil)]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! MovieTableViewCell
        cell.posterImageView.image = movies[indexPath.row].poster
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
            movieTable.deselectRow(at: movieTable.indexPathForSelectedRow!, animated: true)
        }
    }

}