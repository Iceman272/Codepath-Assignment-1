//
//  MovieDetailsViewController.swift
//  Pods
//
//  Created by Brandon Mack on 2/6/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {



    @IBOutlet weak var backdropView: UIImageView!

    @IBOutlet weak var posterView: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var synopsisView: UILabel!
    
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text=movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisView.text=movie["overview"] as? String
        synopsisView.sizeToFit()
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + baseUrl + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
