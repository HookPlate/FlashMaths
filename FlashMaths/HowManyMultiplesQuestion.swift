//
//  HowManyMultiplesQuestion.swift
//  FlashMaths
//
//  Created by robin tetley on 29/11/2023.
//

import Foundation

struct HowManyMultiplesQuestion {
    var questionText: String
    var correctAnswer: Int
    //so the question can generate wrong answers too
    var allAnswers: [Int]
    
    init() {
        //we choose a times table to use.
        var numbers = (2...12).shuffled()
        correctAnswer = numbers.removeFirst()
        
        let multiple = Int.random(in: 2...12)
        //ss we never get 35 / 5 but 34 / 5
        let adjustment = Int.random(in: 0...multiple - 1)
        //so 4 * 6 + 2 becomes how many 4's in 26
        let targetNumber = correctAnswer * multiple + adjustment
        questionText = "How many \(multiple)s are there in \(targetNumber)?"
        //pick the next 4, since they're all wrong, we've already got rid of the correct one.
        allAnswers = Array(numbers.prefix(4))
        //lob the correct one in there too
        allAnswers.append(correctAnswer)
        allAnswers.shuffle()
    }
}
