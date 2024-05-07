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
                // In Progress
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
                                        .fontWeight(.bold)
                                        .padding()
                                    
                                    
                                    Image("hersey")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .scaledToFill()
                                    
                                    Group {
                                        HStack {
                                            NavigationLink(destination: CheckView()) {
                                                HStack {
                                                    Text("Check for Yearbook Purchase")
                                                        .foregroundColor(.orange)
                                                        .fontWeight(.bold)
                                                }
                                                .font(.system(size: geometry.size.height * 0.032))
                                                .padding()
                                                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
                                                .foregroundColor(.white)
                                                .textFieldStyle(.roundedBorder)
                                                .background(RoundedRectangle(cornerRadius: 20.0).fill(.white))
                                                
                                            }
                                        }
                                        HStack{
                                            NavigationLink(destination: BuyView()) {
                                                HStack {
                                                    Text("Buy yearbook")
                                                }
                                                .font(.system(size: geometry.size.height * 0.032))
                                                .fontWeight(.bold)
                                                .padding()
                                                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
                                                .foregroundColor(.orange)
                                                .background(RoundedRectangle(cornerRadius: 20.0).fill(.white))
                                            }
                                        }
                                        
                                        
                                        //In Progress
                                        
                                        //                                         NavigationLink(destination: ChoosePhotoView()) {
                                        //                                                HStack {
                                        //                                                    Text("Choose Yearbook Photo")
                                        //                                                }
                                        //                                                .font(.system(size: geometry.size.height * 0.032))
                                        //                                                .fontWeight(.bold)
                                        //                                                .padding()
                                        //                                                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
                                        //                                                .foregroundColor(.orange)
                                        //                                                .background(RoundedRectangle(cornerRadius: 20.0).fill(.white))
                                        //                                            }
                                    }
                                    .padding()
                                }
                                .padding()
                            }
                        }
                        
                    }
                }
            }
        }
    }
}
//}
#Preview {
    ContentView()
}
