//
//  PlayingView.swift
//  FlashMaths
//
//  Created by robin tetley on 08/12/2023.
//

import SwiftUI

struct PlayingView: View {
    
    @Environment(ViewModel.self) var viewModel
    
    var body: some View {
        VStack {
            HStack {
                //this pushes it straight to the trailing edge
                Spacer()
                
                Button("End Game", systemImage: "xmark.circle", action: viewModel.end)
                    .labelStyle(.iconOnly)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
            }
            .padding()
            
            QuestionView()
                .id(viewModel.questionNumber)
        }
        .backgroundGradient()
    }
}

#Preview {
    PlayingView()
        .environment(ViewModel())
}
