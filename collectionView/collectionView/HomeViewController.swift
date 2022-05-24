//
//  HomeViewController.swift
//  collectionView
//
//  Created by Aigerim Abdurakhmanova on 24.05.2022.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        sectionName.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeMovieCell", for: indexPath) as! HomeScreenTableViewCell
        let rowArray = sectionMovies[indexPath.row]
        cell.updateCellWith(row: rowArray)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionHeaderLabelView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: tableView.frame.height))
        sectionHeaderLabelView.backgroundColor = .clear
        let sectionHeaderLabel = UILabel()
        sectionHeaderLabel.text = sectionName[section]
        sectionHeaderLabel.textColor = .white
        sectionHeaderLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        sectionHeaderLabelView.addSubview(sectionHeaderLabel)
        sectionHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sectionHeaderLabel.leftAnchor.constraint(equalTo: sectionHeaderLabelView.leftAnchor),
            sectionHeaderLabel.rightAnchor.constraint(equalTo: sectionHeaderLabelView.rightAnchor),
            sectionHeaderLabel.topAnchor.constraint(equalTo: sectionHeaderLabelView.topAnchor),
            sectionHeaderLabel.bottomAnchor.constraint(equalTo: sectionHeaderLabelView.bottomAnchor)
        ])
        
        return sectionHeaderLabelView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTableView.delegate = self
        movieTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet var movieTableView: UITableView!
    
    private var sectionName: [String] = ["Today at the cinema", "Coming soon", "Trending"]
    
    private var soonAtTheCinema: [Movie] = [
        Movie.init(name: "Jurassic World: Dominion", poster: UIImage.init(named: "jurassicWorld.png"), dateOfRelease: "2022-06-10"),
        Movie.init(name: "Avatar: The way of water", poster: UIImage.init(named: "avatarTheWayOfWater.jpeg"), dateOfRelease: "2022-16-12"),
        Movie.init(name: "DC league of super pets", poster: UIImage.init(named: "dcLeagueOfPets.jpg"), dateOfRelease: "2022-07-20"),
        Movie.init(name: "Lightyear", poster: UIImage.init(named: "lightyear.jpg"), dateOfRelease: "2022-06-17"),
        Movie.init(name: "Minions: the rise of Gru", poster: UIImage.init(named: "minionsTheRiseOfGru.jpg"), dateOfRelease: "2022-07-01")]
    
    private var todayAtTheCinema: [Movie] = [Movie.init(name: "Doctor Strange in the multiverse of  madness", poster: UIImage.init(named: "doctorStrange2.jpeg"), rating: 7.4, dateOfRelease: "2022-05-05"), Movie.init(name: "Top gun: Maverick", poster: UIImage.init(named: "topGunMaverick.jpg"), rating: 8.6, dateOfRelease: "2022-05-25"), Movie.init(name: "Everything everywhere all at once", poster: UIImage.init(named: "everythingEverywhere.jpg"),rating: 8.5, dateOfRelease: "2022-05-13"), Movie.init(name: "Downton Abbey: a new era", poster: UIImage.init(named: "downtonAbbeyANewEra.jpg"), rating: 7.7, dateOfRelease: "2022-04-29"), Movie.init(name: "Sonic the hedgehog 2", poster: UIImage.init(named: "sonic2.jpg"), rating: 6.6, dateOfRelease: "2022-04-01")]
    
    private var trending: [Movie] = [Movie.init(name: "Doctor Strange in the multiverse of  madness", poster: UIImage.init(named: "doctorStrange2.jpeg"), rating: 7.4, dateOfRelease: "2022-05-05"), Movie.init(name: "Top gun: Maverick", poster: UIImage.init(named: "topGunMaverick.jpg"), rating: 8.6, dateOfRelease: "2022-05-25"), Movie.init(name: "Everything everywhere all at once", poster: UIImage.init(named: "everythingEverywhere.jpg"),rating: 8.5, dateOfRelease: "2022-05-13"), Movie.init(name: "Downton Abbey: a new era", poster: UIImage.init(named: "downtonAbbeyANewEra.jpg"), rating: 7.7, dateOfRelease: "2022-04-29"), Movie.init(name: "Sonic the hedgehog 2", poster: UIImage.init(named: "sonic2.jpg"), rating: 6.6, dateOfRelease: "2022-04-01"),Movie.init(name: "Jurassic World: Dominion", poster: UIImage.init(named: "jurassicWorld.png"), dateOfRelease: "2022-06-10") ]
    
    lazy var sectionMovies: [[Movie]] = [todayAtTheCinema, soonAtTheCinema, trending]
}
