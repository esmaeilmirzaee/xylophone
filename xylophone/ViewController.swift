//
//  ViewController.swift
//  xylophone
//
//  Created by Esmaeil MIRZAEE on 2019-09-14.
//  Copyright © 2019 Esmaeil MIRZAEE. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func notePressed(_ sender: UIButton) {
//        print(sender.tag)
        var soundUrl = Bundle.main.url(forResource: "note1", withExtension: "wav")
        
        switch sender.tag {
        case 1:
            count += 1
            soundUrl = Bundle.main.url(forResource: "note1", withExtension: "wav")
        case 2:
            count += 1
            soundUrl = Bundle.main.url(forResource: "note2", withExtension: "wav")
        case 3:
            count += 1
            soundUrl = Bundle.main.url(forResource: "note3", withExtension: "wav")
        case 4:
            count += 1
            soundUrl = Bundle.main.url(forResource: "note4", withExtension: "wav")
        case 5:
            count += 1
            soundUrl = Bundle.main.url(forResource: "note5", withExtension: "wav")
        case 6:
            count += 1
            soundUrl = Bundle.main.url(forResource: "note6", withExtension: "wav")
        default:
            count += 1
            soundUrl = Bundle.main.url(forResource: "note7", withExtension: "wav")
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        } catch {
            print("Playing audio \(error)")
        }
        audioPlayer.play()
        print(count)
        if 10 == count {
            let alert = UIAlertController(title: "Congradulations", message: "You can play", preferredStyle: .alert)
            let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
            
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            count = 0
        }
    }
}

