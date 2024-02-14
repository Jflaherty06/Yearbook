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
                ZStack {
                    Image("2024coverdesign")
                        .resizable()
                        .frame(width: geometry.size.width * 1.1, height: geometry.size.height * 1.7)
                        .ignoresSafeArea()
                    VStack {
                        Text("2024 Yearbook Wrapped")
                            .font(.system(size: 60))
                            .font(.title)
                            .foregroundStyle(.white)
                            .shadow(radius: 20)
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                        Group {
                            NavigationLink(destination: CheckView()) {
                                HStack {
                                    Text(Image(systemName: "play.circle"))
                                    Text("Check for Yearbook Purchase")
                                }
                                .font(.system(size: geometry.size.height * 0.02))
                                .padding()
                                .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.1)
                                .foregroundColor(.black)
                                .background(RoundedRectangle(cornerRadius: 20.0).fill(.white))
                            }
                            NavigationLink(destination: BuyView()) {
                                HStack {
                                    Text(Image(systemName: "play.circle"))
                                    Text("Buy yearbook")
                                }
                                .font(.system(size: geometry.size.height * 0.02))
                                .padding()
                                .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.1)
                                .foregroundColor(.black)
                                .background(RoundedRectangle(cornerRadius: 20.0).fill(.white))
                            }
                            NavigationLink(destination: ChoosePhotoView()) {
                                HStack {
                                    Text(Image(systemName: "play.circle"))
                                    Text("Choose Yearbook Photo")
                                }
                                    .font(.system(size: geometry.size.height * 0.02))
                                    .padding()
                                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.1)
                                    .foregroundColor(.black)
                                    .background(RoundedRectangle(cornerRadius: 20.0).fill(.white))
                            }
                        }
                        .padding()
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
