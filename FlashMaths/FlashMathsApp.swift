//
//  FlashMathsApp.swift
//  FlashMaths
//
//  Created by robin tetley on 28/11/2023.
//

import SwiftUI

@main
struct FlashMathsApp: App {
    
    @State private var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
                .environment(viewModel)
        }
    }
}
