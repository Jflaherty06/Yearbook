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
    var body: some View {
        VStack {
            TextField("Enter Student ID", text: $StudentID)
//
//
            Button {
                var answer = checkID(studentID: StudentID)
                if answer == true {
                    text = "You have not purchased a yearbook"
                } else if answer == false {
                    text = "You have purchased a yearbook, thank you!"
                }
                Alert(title: Text(""), message: Text("\(text)"), dismissButton: .cancel())
            } label: {
            Text("Check ID")
        }
            NavigationLink(destination: BuyView()) {
                Text("Buy a Yearbook")
            }
        }
    }
    
    
    
    
    
    func checkID(studentID: String) -> Bool{
        for number in viewModel.idNumbers{
            var num = number
            if number == studentID {
               return true
            }
        }
        return false
    }
}



