//
//  Data Source.swift
//  Destini-iOS13
//
//  Created by Артем Крисанов on 11.05.2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

final class DataSource {

    static let shared = DataSource()

    private init() {}

    let titles: [AnswerThread: String] = [
        .start:     """
                    Your car has blown a tire on a winding road in the middle of nowhere 
                    with no cell phone reception. You decide to hitchhike. 
                    A rusty pickup truck rumbles to a stop next to you. 
                    A man with a wide brimmed hat with soulless eyes opens 
                    the passenger door for you and asks: 'Need a ride, boy?'.
                    """,

        .first:     "He nods slowly, unfazed by the question.",

        .end:       """
                    As you begin to drive, the stranger starts talking 
                    about his relationship with his mother. 
                    He gets angrier and angrier by the minute. 
                    He asks you to open the glovebox. Inside you find a bloody knife, 
                    two severed fingers, and a cassette tape of Elton John. 
                    He reaches for the glove box.
                    """,

        .firstEnd:  """
                    What? Such a cop out! Did you know traffic accidents are the second 
                    leading cause of accidental death for most adult age groups?
                    """,

        .secondEnd: """
                    As you smash through the guardrail and careen towards 
                    the jagged rocks below you reflect on the dubious wisdom 
                    of stabbing someone while they are driving a car you are in.
                    """,

        .thirdEnd:  """
                    You bond with the murderer while crooning verses of 'Can you 
                    feel the love tonight'. He drops you off at the next town. 
                    Before you go he asks you if you know any good places to dump bodies. 
                    You reply: 'Try the pier.
                    """,
    ]

    let choices: [AnswerThread: (String, String)] = [
        .start: (
            "I'll hop in. Thanks for the help!",
            "Better ask him if he's a murderer first."
        ),

        .first: (
            "At least he's honest. I'll climb in.",
            "Wait, I know how to change a tire."
        ),

        .end: (
            "I love Elton John! Hand him the cassette tape.",
            "It's him or me! You take the knife and stab him."
        ),

        .firstEnd: (
            "The",
            "End"
        ),

        .secondEnd: (
            "The",
            "End"
        ),

        .thirdEnd: (
            "The",
            "End"
        )
    ]

    let storyRoutes: [AnswerThread: (AnswerThread, AnswerThread)] = [
        .start: (.end, .first),
        .first: (.end, .secondEnd),
        .end: (.thirdEnd, .secondEnd),

        .firstEnd: (.start, .start),
        .secondEnd: (.start, .start),
        .thirdEnd: (.start, .start)
    ]
}
