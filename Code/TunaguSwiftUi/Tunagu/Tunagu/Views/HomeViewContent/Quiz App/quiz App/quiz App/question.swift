//
//  question.swift
//  quiz App
//
//  Created by Kosei Ban on 2022-04-03.
//

import Foundation


struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String){
        text = q
        answer = a
    }
}
