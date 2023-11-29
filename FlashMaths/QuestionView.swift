//
//  QuestionView.swift
//  FlashMaths
//
//  Created by robin tetley on 29/11/2023.
// hi there

import SwiftUI

struct QuestionView: View {
    
    var question = HowManyMultiplesQuestion()
    
    var body: some View {
        VStack {
            Spacer()
            Text("Question 1")
                .fontDesign(.rounded)
                .fontWeight(.black)
            
            Text(question.questionText)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
            //show our answer buttons
            ForEach(0..<question.allAnswers.count, id: \.self) { i in
                Button {
                    //pick an answer
                } label: {
                    Text(question.allAnswers[i].formatted())
                }
            }
            //leaves us with 1 third of space at the top since spacers subdivide the space between them
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    QuestionView()
}
