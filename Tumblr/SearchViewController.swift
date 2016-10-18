//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Abowd, Jonathan on 10/16/16.
//  Copyright © 2016 Abowd, Jonathan. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet weak var loadingImage: UIImageView!
    @IBOutlet weak var searchFeedView: UIImageView!

    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImage(with: images, duration: 0.8)
        
        loadingImage.image = animatedImage
        
        loadingImage.alpha = 1
        searchFeedView.alpha = 0
        
        // Delay for 2 seconds, then run the code between the braces.
        delay(2) {
            UIView.animate(withDuration: 0.25, animations: {
                self.loadingImage.alpha = 0
                self.searchFeedView.alpha = 1
                }, completion: { (Bool) in
            })
        }
        
        // Do any additional setup after loading the view.
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
