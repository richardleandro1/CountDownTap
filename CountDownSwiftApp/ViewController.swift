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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self,
                                                         action: #selector(handleTapAnimations)))
    }
    
    @objc fileprivate func handleTapAnimations(){
        UIView.animate(withDuration: 0.5, delay: 0,
                       usingSpringWithDamping: 1, initialSpringVelocity: 1,
                       options: .curveEaseOut, animations: {
                        
                        self.TextLabel.alpha = 0
                        self.TextLabel.transform = self.TextLabel.transform.translatedBy(x: 0, y: -150)
                        
        })
    }


}

