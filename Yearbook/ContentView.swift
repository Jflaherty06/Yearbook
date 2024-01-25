//
//  ContentView.swift
//  Yearbook
//
//  Created by Jak Flaherty on 12/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geometry in
            NavigationStack {
                ZStack{
                    Image("2024 cover design")
                        .resizable()
                        .frame(width: geometry.size.width * 1.1, height: geometry.size.height * 1.7)
                        .ignoresSafeArea()
                    VStack {
                        Text("2024 Yearbook Wrapped")
                            .font(.title)
                            .foregroundStyle(.white)
                    
                        NavigationLink("Check for Yearbook Purchase", destination: CheckView())
                            .frame(width: 200, height: 100)
                        NavigationLink("Buy yearbook", destination: BuyView())
                            .frame(width: 200, height: 100)
                        NavigationLink("Choose Yearbook Photo", destination: ChoosePhotoView())
                            .frame(width: 200, height: 100)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
