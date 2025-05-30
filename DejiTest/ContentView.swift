//
//  ContentView.swift
//  DejiTest
//
//  Created by Deji O on 30/05/2025.
//

import SwiftUI

struct ContentView: View {
    let items = ["SwiftUI", "Navigation", "Detail Views", "Lists"]
    
    var body: some View {
        NavigationStack {
            List(items, id: \.self) { item in
                NavigationLink(destination: DetailView(title: item)) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                            .foregroundStyle(.tint)
                        Text(item)
                    }
                }
            }
            .navigationTitle("My App..")
        }
    }
}

#Preview {
    ContentView()
}
