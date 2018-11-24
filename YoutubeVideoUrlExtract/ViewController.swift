//
//  ViewController.swift
//  YoutubeVideoUrlExtract
//
//  Created by yassir ramdani on 24/11/2018.
//  Copyright © 2018 yassir ramdani. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
       
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        
        
        let player = AVPlayer(url: URL(string: "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4")!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = CGRect(x: view.frame.width/2 - 360/2, y: 40, width: 360, height: 250)
        playerLayer.player?.play()
        view.layer.addSublayer(playerLayer)
    }

}

