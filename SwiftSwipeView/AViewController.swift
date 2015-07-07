//
//  AViewController.swift
//  bubble_ios
//
//  Created by Brendan Lee on 7/23/14.
//  Copyright (c) 2014 Brendan Lee. All rights reserved.
//

import UIKit

import MediaPlayer

var moviePlayer : MPMoviePlayerController?

class AViewController: UIViewController {
    
    func displayVideoFromURL( address: String ) {
        
        if let url:NSURL = NSURL( string: address ) {
            
            if let moviePlayer = MPMoviePlayerController( contentURL: url ) {
                
                view.addSubview( moviePlayer.view )
                moviePlayer.fullscreen = true
                moviePlayer.controlStyle = MPMovieControlStyle.Embedded
                moviePlayer.movieSourceType = MPMovieSourceType.Streaming
                
                moviePlayer.play()
            }
        }
    }
    
    func playVideo() {
        let path = NSBundle.mainBundle().pathForResource("chestream", ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = moviePlayer {
            player.view.frame = self.view.bounds
            player.prepareToPlay()
            player.scalingMode = .AspectFill
            self.view.addSubview(player.view)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //playVideo()
        displayVideoFromURL( "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" )
    }
    
//    func viewDidAppear() {
//        //super.viewDidAppear()
//        // Do any additional setup after loading the view, typically from a nib.
//        //playVideo()
//        displayVideoFromURL( "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" )
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}