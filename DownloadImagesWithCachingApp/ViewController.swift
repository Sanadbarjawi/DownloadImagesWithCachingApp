//
//  ViewController.swift
//  DownloadImagesWithCachingApp
//
//  Created by Sanad Barjawi on 9/9/18.
//  Copyright © 2018 Sanad Barjawi. All rights reserved.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {

    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView1.downloadImage(url: "https://images.pexels.com/photos/912110/pexels-photo-912110.jpeg?auto=compress&cs=tinysrgb&h=650&w=940")
        imgView2.downloadImage(url: "https://images.pexels.com/photos/912110/pexels-photo-912110.jpeg?auto=compress&cs=tinysrgb&h=650&w=940")
        imgView3.downloadImage(url: "https://images.pexels.com/photos/912110/pexels-photo-912110.jpeg?auto=compress&cs=tinysrgb&h=650&w=940")
    }
}

extension UIImageView{
    func downloadImage(url:String){
        let url = URL(string: url)!
        self.kf.indicatorType = .activity
        self.kf.setImage(with: url)
    }
}
