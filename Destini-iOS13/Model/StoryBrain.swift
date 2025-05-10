//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

final class StoryBrain {

    private let dataSource = DataSource.shared
    private let model = StoryModel.getStoryData()

    func getStory(for  branch: AnswerThread) -> StoryModel? {
        return model[branch]
    }

    func getNextBranch(for branch: AnswerThread, choice: Bool) -> AnswerThread {
        let nextBranches = dataSource.storyRoutes[branch] ?? (.start, .start)

        return choice ? nextBranches.0 : nextBranches.1
    }
}

