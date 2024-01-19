//
//  ContentView.swift
//  Yearbook
//
//  Created by Jak Flaherty on 12/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("2024 Yearbook Wrapped").fontWeight(.bold).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).multilineTextAlignment(.center)
            NavigationLink("Choose Yearbook Photo", destination: ChoosePhoto())
                .frame(width: 300, height: 100).font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
