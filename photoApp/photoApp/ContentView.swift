//
//  ContentView.swift
//  photoApp
//
//  Created by Carl on 10/31/25.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = PhotosViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
