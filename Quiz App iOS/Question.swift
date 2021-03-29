//
//  Question.swift
//  Quiz App iOS
//
//  Created by Ash Oldham on 28/03/2021.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
