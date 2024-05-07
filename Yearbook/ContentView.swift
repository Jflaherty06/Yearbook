//
//  ContentView.swift
//  Yearbook
//
//  Created by Jak Flaherty on 12/7/23.
//

import SwiftUI
struct ContentView: View {
    
    @State var  instructions = "The Hersey yearbook is a great thing\nIt has so many awesome pictures\nIt features many different sports and clubs"
    var body: some View {
        GeometryReader { geometry in
            HStack {
//                NavigationSplitView {
//                    Text(instructions)
//                } detail: {
                    NavigationStack {
                        ZStack {
                            Color.gray
                                .ignoresSafeArea()
                            
                            VStack{
                                ZStack(alignment: .trailing) {
                                    VStack {
                                        Text("2024 Yearbook Wrapped")
                                            .font(.system(size: 60))
                                            .font(.title)
                                            .foregroundStyle(.white)
                                            .shadow(radius: 20)
                                            .offset(y:-50)
                                            .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                                            .fontWeight(.bold)
                                        
                                        Image("hersey")
                                            .resizable()
                                            .offset(y:-25)
                                            .frame(width: 150, height: 150)
                                            .padding()
                                        
                                        Group {
                                            HStack {
                                                NavigationLink(destination: CheckView()) {
                                                    HStack {
                                                        Text("Check for Yearbook Purchase")
                                                            .foregroundColor(Color(red: 252/255.0, green: 103/255.0, blue: 26/255.0))
                                                    }
                                                    .font(.system(size: geometry.size.height * 0.032))
                                                    .fontWeight(.bold)
                                                    .padding()
                                                    .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
                                                    .foregroundColor(.white)
                                                    .textFieldStyle(.roundedBorder)
                                                    .background(.white)
                                                    .cornerRadius(20.0)
                                                    .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(Color(red: 82/255.0, green: 53/255.0, blue: 40/255.0), lineWidth: 4))
                                                }
                                            }
//                                            HStack{
//                                                NavigationLink(destination: BuyView()) {
//                                                    HStack {
//                                                        Text("Buy yearbook")
//                                                            .foregroundColor(Color(red: 252/255.0, green: 103/255.0, blue: 26/255.0))
//                                                    }
//                                                    .font(.system(size: geometry.size.height * 0.032))
//                                                    .fontWeight(.bold)
//                                                    .padding()
//                                                    .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
//                                                    .foregroundColor(.white)
//                                                    .textFieldStyle(.roundedBorder)
//                                                    .background(.white)
//                                                    .cornerRadius(20.0)
//                                                    .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(Color(red: 82/255.0, green: 53/255.0, blue: 40/255.0), lineWidth: 4))
//                                                }
//                                            }
//                                            NavigationLink(destination: ChoosePhotoView()) {
//                                                HStack {
//                                                    Text("Choose Yearbook Photo")
//                                                        .foregroundColor(Color(red: 252/255.0, green: 103/255.0, blue: 26/255.0))
//                                                }
//                                                .font(.system(size: geometry.size.height * 0.032))
//                                                .fontWeight(.bold)
//                                                .padding()
//                                                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
//                                                .foregroundColor(.white)
//                                                .textFieldStyle(.roundedBorder)
//                                                .background(.white)
//                                                .cornerRadius(20.0)
//                                                .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(Color(red: 82/255.0, green: 53/255.0, blue: 40/255.0), lineWidth: 4))
//                                            }
                                        }
                                        .padding()
                                    }
                                    .padding()
                                }
                            }
                            
                        }
                    }
//                }
            }
        }
    }
}
#Preview {
    ContentView()
}
