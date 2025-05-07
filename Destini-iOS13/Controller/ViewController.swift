//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let storyBrain = StoryBrain()
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle ?? ""
        storyBrain.nextStory(userChoice: userChoice)
        updateUi()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi( )
    }
    
    func updateUi() {
        storyLabel.text = storyBrain.storyText[storyNumber].title
        choice1Button.setTitle(storyBrain.storyText[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storyText[storyNumber].choice2, for: .normal)
    }
}

