//
//  DetailsViewController.swift
//  MovieApp
//
//  Created by Minjing Shi on 5/20/19.
//  Copyright © 2019 Minjing Shi. All rights reserved.
//

import UIKit
import AlamofireImage
import Parse

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var PosterImage: UIImageView!
    @IBOutlet weak var BackDropView: UIImageView!
    @IBOutlet weak var SynopsisLable: UILabel!
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        TitleLabel.text = movie["title"] as! String
        TitleLabel.sizeToFit()
        SynopsisLable.text = movie["overview"] as? String
        SynopsisLable.sizeToFit()
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        PosterImage.af_setImage(withURL: posterUrl!)
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath )
        BackDropView.af_setImage(withURL: backdropUrl!)
        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func OnLogout(_ sender: Any) {
        if (PFUser.current() == nil) {return;}
        PFUser.logOut()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let Login = storyboard.instantiateViewController(withIdentifier: "Login") as! UIViewController
        self.present(Login, animated: true, completion: nil)
        
    }
    
}
