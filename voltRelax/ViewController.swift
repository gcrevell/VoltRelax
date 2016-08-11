//
//  ViewController.swift
//  voltRelax
//
//  Created by iD Student on 7/16/15.
//  Copyright (c) 2015 iD Student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var backgroundMusic = AVAudioPlayer()
    
    func setupAudioPlayerWithFile(_ file:NSString, type:NSString) -> AVAudioPlayer  {
        //1
        let path = Bundle.main.path(forResource: file as String, ofType: type as String)
        let url = URL(fileURLWithPath: path!)
        
        //3
        var audioPlayer:AVAudioPlayer?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        } catch let error1 as NSError {
            audioPlayer = nil
        }
        
        //4
        return audioPlayer!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundMusic = self.setupAudioPlayerWithFile("relax", type:"mp3")
        backgroundMusic.volume = 0.3
        backgroundMusic.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

