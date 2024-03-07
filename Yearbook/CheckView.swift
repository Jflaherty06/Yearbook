//
//  CheckView.swift
//  Yearbook
//
//  Created by Thomas Niezyniecki on 1/19/24.
//

import Foundation
import SwiftUI

struct CheckView: View {
    
    @ObservedObject var viewModel  = CheckViewModel()
    @State var StudentID = ""
    @State var purchased:Bool = true
    @State var text = ""
    @State var showingAlert = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Color.gray
                    .ignoresSafeArea()
               Group {
                   VStack(spacing: 5) {
                       Color.gray
                           .ignoresSafeArea()
                       Text("Check for Yearbook")
                       //                       .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.2, alignment: .center)
                       Text("Purchase")
                       //                       .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1, alignment: .center)
                   }
                }
              
//                .font(.system(size: 60))
                .padding()
                .font(.custom(
                "Arial", fixedSize: 60))
                .foregroundStyle(.orange)
                .shadow(radius: 20)
                .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.2, alignment: .center)
                .padding()
                TextField("Enter Student ID", text: $StudentID)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.1)
                    .font(.system(size: 50))
                    .background(.gray)
                    .padding()
                    .onSubmit {
                        let answer = checkID(studentID: StudentID)
                        if answer == true {
                            text = "You have not purchased a yearbook"
                        } else if answer == false {
                            text = "You have purchased a yearbook, thank you!"
                        }
                        showingAlert =  true
                    }
                    .alert("\(text)", isPresented: $showingAlert) {
                        Button("Ok", role: .cancel) { }
                        NavigationLink(destination: BuyView()) {
                            Text("Buy a Yearbook")
                        }
                    }
                Button {
                    let answer = checkID(studentID: StudentID)
                    if answer == true {
                        text = "You have not purchased a yearbook"
                    } else if answer == false {
                        text = "You have purchased a yearbook, thank you!"
                    }
                    showingAlert =  true
                    StudentID = ""
                } label: {
                    HStack {
                        Text(Image(systemName: "play.circle"))
                        Text("Check ID")
                    }
                    .font(.system(size: geometry.size.height * 0.02))
                    .padding()
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.1)
                    .background(Color.orange)
                    .foregroundColor(.black)
                    .background(RoundedRectangle(cornerRadius: 20.0).fill(.orange))
                }
                .alert("\(text)", isPresented: $showingAlert) {
                    Button("Ok", role: .cancel) { StudentID = "" }
                    NavigationLink(destination: BuyView()) { Text("Buy a Yearbook") }
                }
                NavigationLink(destination: BuyView()) {
                    HStack {
                        Text(Image(systemName: "play.circle"))
                        Text("Buy a Yearbook")
                    }
                    .font(.system(size: geometry.size.height * 0.02))
                    .padding()
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.1)
                    .background(Color.orange)
                    .foregroundColor(.black)
                    .background(RoundedRectangle(cornerRadius: 20.0).fill(.orange))
                }
            }
        }
    }
    
    
    
    
    func checkID(studentID: String) -> Bool{
        for number in viewModel.idNumbers {
            if number == studentID {
                return true
            }
        }
        return false
    }
}



