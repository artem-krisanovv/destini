//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

enum AnswerThread {
    case start, first, end
    case firstEnd, secondEnd, thirdEnd
}

struct StoryModel {
    let title: String
    let answers: Answer
}

struct Answer {
    let choiceFirst: String
    let choiceSecond: String
}

extension StoryModel {
    static func getStoryData() -> [AnswerThread: StoryModel] {
        let dataSource = DataSource.shared
        var storyModel: [AnswerThread: StoryModel] = [:]

        for (branch, title) in dataSource.titles {
            let (choiceFirst, choiceSecond) = dataSource.choices[branch] ?? ("", "")

            let story = StoryModel(
                title: title,
                answers: Answer(
                    choiceFirst: choiceFirst,
                    choiceSecond: choiceSecond
                )
            )

            storyModel[branch] = story
        }

        return storyModel
    }
}







