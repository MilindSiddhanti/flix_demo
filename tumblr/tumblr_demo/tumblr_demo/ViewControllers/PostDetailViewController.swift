//
//  PostDetailViewController.swift
//  tumblr_demo
//
//  Created by Milind Siddhanti on 9/17/18.
//  Copyright © 2018 Milind Siddhanti. All rights reserved.
//

import UIKit

class PostDetailViewController: UIViewController {

    @IBOutlet weak var posterDetailImageView: UIImageView!
    
    var posts: [[String: Any]] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        if let posts = posts{
            
            let posterdetailString = posts[""]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            
            posterdetailString.af_setImage(withURL: url!)
            
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
