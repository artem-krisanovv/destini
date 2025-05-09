//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryModel {
    let title: String
    let choiceFirst: String
    let choiceFirstDestination: Int
    let choiceSecond: String
    let choiceSecondDestination: Int

    static func getStoryText() -> [StoryModel] {
        [
            StoryModel(
                title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
                choiceFirst: "I'll hop in. Thanks for the help!", choiceFirstDestination: 2,
                choiceSecond: "Better ask him if he's a murderer first.", choiceSecondDestination: 1
            ),
            StoryModel(
                title: "He nods slowly, unfazed by the question.",
                choiceFirst: "At least he's honest. I'll climb in.", choiceFirstDestination: 2,
                choiceSecond: "Wait, I know how to change a tire.", choiceSecondDestination: 3
            ),
            StoryModel(
                title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                choiceFirst: "I love Elton John! Hand him the cassette tape.", choiceFirstDestination: 5,
                choiceSecond: "It's him or me! You take the knife and stab him.", choiceSecondDestination: 4
            ),
            StoryModel(
                title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                choiceFirst: "The", choiceFirstDestination: 0,
                choiceSecond: "End", choiceSecondDestination: 0
            ),
            StoryModel(
                title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                choiceFirst: "The", choiceFirstDestination: 0,
                choiceSecond: "End", choiceSecondDestination: 0
            ),
            StoryModel(
                title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
                choiceFirst: "The", choiceFirstDestination: 0,
                choiceSecond: "End", choiceSecondDestination: 0
            )
        ]
    }
}





