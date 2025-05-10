//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation



import Foundation

final class StoryBrain {

    var storyNumber = 0

     func nextStory(userChoice: String, model: [StoryModel]) {
        let choice = model[storyNumber]
        
        if userChoice == choice.choiceFirst {
            storyNumber = choice.choiceFirstDestination
        } else {
            storyNumber = choice.choiceSecondDestination
        }
    }
}

