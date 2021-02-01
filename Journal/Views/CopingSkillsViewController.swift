//
//  CopingSkillsViewController.swift
//  Journel in 10 min
//
//  Created by Rahima Adnan on 2/1/21.
//  Copyright © 2021 Trevor Walker. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wv: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadYoutube(videoID: "oCm_lnoVf08")
    }
    func loadYoutube(videoID:String) {
        guard
            let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
            else { return }
        wv.loadRequest( URLRequest(url: youtubeURL) )
    }
}
