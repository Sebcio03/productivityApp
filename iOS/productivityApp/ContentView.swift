//
//  ContentView.swift
//  productivityApp
//
//  Created by Sebastian Ozimkowski on 07/01/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
