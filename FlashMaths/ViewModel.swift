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
    enum PlayState {
        case menu, playing, gameOver
    }
    //set so you can't change it anywhere else
    private(set) var playState = PlayState.menu
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
        //so that the timeAllowed gets shorter and shorter each question.
        timeAllowed *= 0.99
    }
    
    func check(answer: Int) {
        if answer == question.correctAnswer {
            nextQuestion()
        } else {
            gameOver()
        }
    }
    
    func gameOver() {
        playState = .gameOver
        //we use - 1 here since the questionNumber is always 1 higher than the score. If they've answered 2 correctly they're now on question 3.
        UserDefaults.standard.set(questionNumber - 1, forKey: "LastScore")
    }
    
    func start() {
        playState = .playing
        timeAllowed = 10
        questionNumber = 0
        nextQuestion()
    }
    
    
    func end() {
        //will end the game
        playState = .menu
    }
}
