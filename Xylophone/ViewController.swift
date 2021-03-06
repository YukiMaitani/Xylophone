//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(button: sender)
    }
    
    func playSound(button:UIButton) {
        let url = Bundle.main.url(forResource: button.currentTitle!, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        button.alpha /= 2
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            button.alpha *= 2
        }
    }
}


