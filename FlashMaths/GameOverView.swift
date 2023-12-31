//
//  GameOverView.swift
//  FlashMaths
//
//  Created by robin tetley on 12/12/2023.
//

import SwiftUI

struct GameOverView: View {
    @Environment(ViewModel.self) var viewModel
    
    var body: some View {
        VStack {
            Text("Game Over!")
                .titleStyle()
            Text("You scored: \(viewModel.questionNumber - 1)")
                .subtitleStyle()
            Button("Play Again", action: viewModel.end)
                .buttonStyle(.primary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundGradient()
    }
}

#Preview {
    GameOverView()
        .environment(ViewModel())
}
