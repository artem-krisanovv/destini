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
    @IBOutlet weak var choiceFirstButton: UIButton!
    @IBOutlet weak var choiceSecondButton: UIButton!
    
    var storyBrain = StoryBrain()
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle ?? ""
        let numberOfStory = storyBrain.numberOfStory()
        storyBrain.nextStory(userChoice: userChoice)
        updateUi(numberOfStory: numberOfStory)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi(numberOfStory: 0)
    }
    
    func updateUi(numberOfStory: Int) {
        let choice = StoryText().storyText[numberOfStory]
        storyLabel.text = choice.title
        choiceFirstButton.setTitle(choice.choiceFirst, for: .normal)
        choiceSecondButton.setTitle(choice.choiceSecond, for: .normal)
    }
}

