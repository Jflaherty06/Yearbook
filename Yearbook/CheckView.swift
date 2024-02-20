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
    @State var text1 = ""
    var body: some View {
        VStack {
            TextField("Enter Student ID", text: $StudentID)
            NavigationLink(destination: BuyView()) {
                Text("Go to buy yearbook")
            }
            
            Button {
                var intID = Int(StudentID)
                var answer = checkID(studentID: StudentID)
                if answer == false{
                    text1 = "false"
                }
                if answer == true {
                    text = "You have not purchased a yearbook"
                } else if answer == false {
                    text = "You have purchased a yearbook, thank you!"
                }
                
            }
        label: {
            Text("Check ID")
        }
        .onSubmit {
            
            
        }
            
            Text(text)
            Text(text1)
            
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



