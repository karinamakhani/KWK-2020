//
//  ViewController.swift
//  StoryBoardIntro
//
//  Created by Karina on 8/5/20.
//  Copyright © 2020 Karina Makhani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFeild: UITextField!
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if let newTitle = textFeild.text {
            appTitle.text = newTitle}
    }
    @IBOutlet weak var appTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
print("This is a print statement - testing testing!")
    }


}

