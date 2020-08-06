//
//  ViewController.swift
//  MiniProject2
//
//  Created by Karina on 8/6/20.
//  Copyright © 2020 Karina Makhani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        responseChecker.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var responseChecker: UILabel!
    
    @IBAction func choiceA(_ sender: UIButton) {        responseChecker.text = "✅"
        responseChecker.isHidden = false
    }
    @IBAction func choiceB(_ sender: UIButton) {        responseChecker.text = "❌"
        responseChecker.isHidden = false
    }
    @IBAction func choiceC(_ sender: UIButton) {
        responseChecker.text = "❌"
        responseChecker.isHidden = false
    }
}

