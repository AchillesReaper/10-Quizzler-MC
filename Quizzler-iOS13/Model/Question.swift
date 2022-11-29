//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Donald Ho on 29/11/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
import Foundation
struct Question{
    var q: String
    var a: [String]
    var correctAnswer: String
    init(q: String, a: [String], correctAnswer: String) {
        self.q = q
        self.a = a
        self.correctAnswer = correctAnswer
    }
}
