//
//  ViewController.swift
//  Magic_Ball
//
//  Created by Тимур on 28.08.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!


    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func Button(_ sender: UIButton) {
        let ballArray = [#imageLiteral(resourceName: "02_no"), #imageLiteral(resourceName: "03_may_be"), #imageLiteral(resourceName: "05_hell_yeah"), #imageLiteral(resourceName: "06_hell_no"), #imageLiteral(resourceName: "07_really"), #imageLiteral(resourceName: "02_no"), #imageLiteral(resourceName: "01_yes")]
        imageView.image = ballArray [Int.random(in: 0...6)]
        playSound()
        imageView.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { [self] in
            self.imageView.alpha = 1.0
    }
    func playSound() {
            let url = Bundle.main.url(forResource: "whoosh", withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()

    }
}
}
