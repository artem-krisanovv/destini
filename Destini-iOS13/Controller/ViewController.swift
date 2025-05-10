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
    
    private var currentBranch: AnswerThread = .start
    private let storyBrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()
    }
    
    private func updateUi() {
        guard let story = storyBrain.getStory(for: currentBranch) else { return }
        
        let choiceFirst = story.answers.choiceFirst
        let choiceSecond = story.answers.choiceSecond
        
        storyLabel.text = story.title
        choiceFirstButton.setTitle(choiceFirst, for: .normal)
        choiceSecondButton.setTitle(choiceSecond, for: .normal)
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        currentBranch = storyBrain.getNextBranch(
            for: currentBranch,
            choice: sender == choiceFirstButton
        )
        
        updateUi()
    }
    
}

