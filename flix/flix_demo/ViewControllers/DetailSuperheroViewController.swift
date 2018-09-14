//
//  DetailSuperheroViewController.swift
//  flix_demo
//
//  Created by Milind Siddhanti on 9/13/18.
//  Copyright © 2018 Milind Siddhanti. All rights reserved.
//

import UIKit

enum MovieKeysSuperhero {
    static let title = "title"
    static let release_date = "release_date"
    static let overview = "overview"
    static let backdropSuperheroPath = "backdrop_path"
    static let posterSuperheroPath = "poster_path"
    
}

class DetailSuperheroViewController: UIViewController {

    
    @IBOutlet weak var backDropSuperheroImageView: UIImageView!
    
    @IBOutlet weak var titleSuperheroLabel: UILabel!
    @IBOutlet weak var posterSuperheroImageView: UIImageView!
    @IBOutlet weak var overviewSuperheroLabel: UILabel!
    @IBOutlet weak var releaseDateSuperheroLabel: UILabel!
    
    var movie: [String: Any]?   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie {
            titleSuperheroLabel.text = movie[MovieKeysSuperhero.title] as? String
            releaseDateSuperheroLabel.text = movie[MovieKeysSuperhero.release_date] as? String
            overviewSuperheroLabel.text = movie[MovieKeysSuperhero.overview] as? String
            let backdropSuperheroPathString = movie[MovieKeysSuperhero.backdropSuperheroPath] as! String
            let posterSuperheroPathString = movie[MovieKeysSuperhero.posterSuperheroPath] as! String
            let baseURLSuperheroString = "https://image.tmdb.org/t/p/w500"
            
            let backdropSuperheroURL = URL(string: baseURLSuperheroString + backdropSuperheroPathString)!
            backDropSuperheroImageView.af_setImage(withURL: backdropSuperheroURL)
            
            let posterSuperheroURL = URL(string: baseURLSuperheroString + posterSuperheroPathString)!
            posterSuperheroImageView.af_setImage(withURL: posterSuperheroURL)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
