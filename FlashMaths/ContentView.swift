//
//  ContentView.swift
//  FlashMaths
//
//  Created by robin tetley on 28/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlayingView()
    }
}

#Preview {
    ContentView()
        .environment(ViewModel())
}
