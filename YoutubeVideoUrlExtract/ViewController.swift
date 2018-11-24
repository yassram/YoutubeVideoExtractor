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
        let playerLayer = AVPlayerLayer()
        playerLayer.frame = CGRect(x: view.frame.width/2 - 400/2, y: 40, width: 400, height: 250)
        view.layer.addSublayer(playerLayer)

        extractVideos(from: "iol8n3m88SA") { (dic) -> (Void) in
            print(dic)
            let player = AVPlayer(url: URL(string: dic.values.first!)!)
            playerLayer.player = player
            playerLayer.player?.play()
        }
    }

}

