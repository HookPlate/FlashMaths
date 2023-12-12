//
//  ViewModel.swift
//  FlashMaths
//
//  Created by robin tetley on 08/12/2023.
//

import Foundation

@Observable
@dynamicMemberLookup
class ViewModel {
    var questionNumber = 0
    var question : HowManyMultiplesQuestion!
    var timeAllowed = 10.0
    
    subscript<Value>(dynamicMember keyPath: KeyPath<HowManyMultiplesQuestion, Value>) -> Value {
            question[keyPath: keyPath]
    }
    
    init() {
        nextQuestion()
    }
    
    func nextQuestion() {
        question = HowManyMultiplesQuestion()
        questionNumber += 1
    }
    
    func check(answer: Int) {
        if answer == question.correctAnswer {
            nextQuestion()
        } else {
            //gameover
        }
    }
    
    func end() {
        //will end the game
    }
}
