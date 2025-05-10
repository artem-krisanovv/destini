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
    let model = StoryModel.getStoryText()

    
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
       guard let userChoice = sender.currentTitle else { return }
        storyBrain.nextStory(userChoice: userChoice, model: model)
        let storyNumber = storyBrain.storyNumber
        updateUi(numberOfStory: storyNumber)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi(numberOfStory: 0)
    }
    
    func updateUi(numberOfStory: Int) {
        let choice = model[numberOfStory]
        storyLabel.text = choice.title
        choiceFirstButton.setTitle(choice.choiceFirst, for: .normal)
        choiceSecondButton.setTitle(choice.choiceSecond, for: .normal)
    }
}

