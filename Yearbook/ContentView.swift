//
//  ContentView.swift
//  Yearbook
//
//  Created by Jak Flaherty on 12/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("2024 Yearbook Wrapped")
                NavigationLink("Check for Yearbook Purchase", destination: CheckView())
                    .frame(width: 200, height: 100)
                NavigationLink("Choose Yearbook Photo", destination: ChoosePhotoView())
                    .frame(width: 200, height: 100)
                NavigationLink("Buy yearbook", destination: BuyView())
                    .frame(width: 200, height: 100)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
