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
        VStack {
            TextField("Enter Student ID", text: $StudentID)
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
            } label: {
                Text("Check ID")
            }
            .alert("\(text)", isPresented: $showingAlert) {
                Button("Ok", role: .cancel) { }
            }
            NavigationLink(destination: BuyView()) {
                Text("Buy a Yearbook")
            }
        }
    }
    
    
    
    
    
    func checkID(studentID: String) -> Bool {
        for number in viewModel.idNumbers{
            if number == studentID {
                return true
            }
        }
        return false
    }
}



