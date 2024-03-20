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
        ZStack {
            GeometryReader { geometry in
                NavigationStack {
                    ZStack {
                        Color.gray
                            .ignoresSafeArea()
                        //                    Image("2024coverdesign")
                        //                        .resizable()
                        //                        .frame(width: geometry.size.width * 1.1, height: geometry.size.height * 1.7)
                        //                        .ignoresSafeArea()
                        VStack{
                            ZStack(alignment: .trailing) {
                                VStack {
                                    Text("2024 Yearbook Wrapped")
                                        .font(.system(size: 60))
                                        .font(.title)
                                        .foregroundStyle(.white)
                                        .shadow(radius: 20)
                                    //                                        .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
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
                                                    Text(Image(systemName: "play.circle"))
                                                        .foregroundColor(Color(red: 255/255, green: 165/255, blue: 0/255))
                                                    Text("Check for Yearbook Purchase")
                                                    .foregroundColor(.orange)                                        }
                                                .font(.system(size: geometry.size.height * 0.032))
                                                .padding()
                                                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
                                                .foregroundColor(.black)
                                                .textFieldStyle(.roundedBorder)
                                                .background(RoundedRectangle(cornerRadius: 20.0).fill(.white))
                                                
                                            }
                                        }
                                        HStack{
                                            NavigationLink(destination: BuyView()) {
                                                HStack {
                                                    Text(Image(systemName: "play.circle"))
                                                    Text("Buy yearbook")
                                                }
                                                .font(.system(size: geometry.size.height * 0.032))
                                                .padding()
                                                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
                                                .foregroundColor(.black)
                                                .background(RoundedRectangle(cornerRadius: 20.0).fill(.white))
                                            }
                                        }
                                        //                                    NavigationLink(destination: ChoosePhotoView()) {
                                        //                                        HStack {
                                        //                                            Text(Image(systemName: "play.circle"))
                                        //                                            Text("Choose Yearbook Photo")
                                        //                                        }
                                        //                                        .font(.system(size: geometry.size.height * 0.02))
                                        //                                        .padding()
                                        //                                        .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.1)
                                        //                                        .foregroundColor(.black)
                                        //                                        .background(RoundedRectangle(cornerRadius: 20.0).fill(.white))
                                        //                                    }
                                    }
                                    .padding()
                                }
                                .padding()
                                //                            VStack(alignment: .trailing) {
                                //                                HStack {
                                //                                    Button {
                                //                                        poppedOut.toggle()
                                //                                        if poppedOut == false {
                                //                                            buttonOrientation = "left"
                                //                                            x = 0
                                //                                            y = 0
                                //                                        }
                                //                                        if poppedOut == true {
                                //                                            buttonOrientation = "right"
                                //                                            x = 400
                                //                                            y = geometry.size.height * 1
                                //                                        }
                                //
                                //                                    } label: {
                                //                                        Text("\(Image(systemName: "arrowshape.\(buttonOrientation).fill"))")
                                //                                            .font(.system(size: 20))
                                //                                            .foregroundColor(.orange)
                                //                                    }
                                //                                    VStack {
                                //                                        Text(instructions)
                                //                                            .padding()
                                //                                    }
                                //                                    .frame(width: x, height: y)
                                //                                    .background(.orange)
                                //                                }
                                //                            }
                            }
                        }
                        //                    Spacer()
                    }
                }
                NavigationView {
                    Text(instructions)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
