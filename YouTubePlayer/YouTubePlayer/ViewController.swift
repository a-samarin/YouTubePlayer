//
//  ViewController.swift
//  YouTubePlayer
//
//  Created by Anton Samarin on 25.12.15.
//  Copyright © 2015 Anton Samarin. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playerView.delegate = self
        
        //let params: NSDictionary = ["controls":0]
        //playerView.loadWithVideoId("M7lc1UVf-VE", playerVars: params as [NSObject : AnyObject])
        
        self.playerView.sizeToFit()
        
        let vars = ["playsinline": 1, "controls": 0, "showinfo": 0]
        
        self.playerView.loadWithVideoId("M7lc1UVf-VE", playerVars: vars)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func playerViewDidBecomeReady(playerView: YTPlayerView!) {
        
        //self.playerView.sizeThatFits(self.view.frame.size)
        
        playerView.playVideo()
    }

}

