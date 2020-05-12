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
    @IBOutlet weak var TapButonn: UIButton!
    var ButtonCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TextLabel.text = "0"
    }
    
    @IBAction func TapButton(_ sender: Any) {
        self.ButtonCount += 1
        self.TextLabel.text = String(self.ButtonCount)
        
    }
    
    

}
