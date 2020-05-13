//
//  ViewController.swift
//  CountDownSwiftApp
//
//  Created by Richard Leandro on 07/05/20.
//  Copyright © 2020 Richard Leandro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var TextLabel: UILabel!
    
    var ButtonCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TextLabel.text = "0"
    }
    

    @IBAction func UpButton(_ sender: Any) {
        TextLabel.layer.bottomAnimation(duration: 0.7)
        self.ButtonCount += 1
        self.TextLabel.text = String(self.ButtonCount)
        
    }
    
    @IBAction func DownButton(_ sender: Any) {
        
        if ButtonCount > 0 {
            TextLabel.layer.topAnimation(duration: 0.7)
            self.ButtonCount -= 1
            self.TextLabel.text = String(self.ButtonCount)
        }
    }
}

extension CALayer {
    
    func bottomAnimation(duration:CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        animation.duration = duration
        animation.type = CATransitionType.push
        animation.subtype = CATransitionSubtype.fromTop
        self.add(animation, forKey: "transition")
    }
    
    func topAnimation(duration:CFTimeInterval) {
        let animation = CATransition()
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        animation.duration = duration
        animation.type = CATransitionType.push
        animation.subtype = CATransitionSubtype.fromBottom
        self.add(animation, forKey: "transition")
    }
}
