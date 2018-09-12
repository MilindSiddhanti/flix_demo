//
//  DetailViewController.swift
//  flix_demo
//
//  Created by Milind Siddhanti on 9/11/18.
//  Copyright © 2018 Milind Siddhanti. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailViewController: UIViewController {
    
    enum MovieKeys {
        static let title = "title"
        static let posterPath = "poster_path"
        static let backDropPath  = "backdrop_path"
        static let release_date = "release_date"
        static let overview = "overview"
    }
    @IBOutlet weak var backDropImageView: UIImageView!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie: [String: Any]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
            titleLabel.text = movie[MovieKeys.title] as? String
            releaseDateLabel.text = movie[MovieKeys.release_date] as? String
            overviewLabel.text = movie[MovieKeys.overview] as? String
            
            let backDropPathString  = movie[MovieKeys.backDropPath] as! String
            let posterPathString = movie[MovieKeys.posterPath] as! String
            
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backDropURL = URL(string: baseURLString + backDropPathString)!
            
            backDropImageView.af_setImage(withURL: backDropURL)
            
            let posterPathURL = URL(string: baseURLString + posterPathString)!
            
            posterImageView.af_setImage(withURL: posterPathURL)
            
            
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
