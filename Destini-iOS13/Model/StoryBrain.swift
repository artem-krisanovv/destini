//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation



struct StoryBrain {
    
    var storyNumber = 0
    let storyArray = StoryModel.getStoryText()
    
    mutating func nextStory(userChoice: String) {
        let choice = storyArray[numberOfStory()]
        if userChoice == choice.choiceFirst {
            storyNumber = choice.choiceFirstDestination
        } else {
            storyNumber = choice.choiceSecondDestination
        }
    }
    
    func numberOfStory() -> Int {
        return storyNumber
    }
}

