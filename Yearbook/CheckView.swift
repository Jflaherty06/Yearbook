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
    @State var text = "Test"
    var body: some View {
        VStack{
            TextField("Enter Student ID", text: $StudentID)
            NavigationLink(destination: BuyView()) {
                Text("Go to buy yearbook")
            }
            Button {
                var answer = checkID(studentID: StudentID)
                if answer == true {
                    text = "You have not purchased a yearbook"
                }
            }
    label: {
        Text("Check ID")
    }
    .onSubmit {
        StudentID = ""
    }
        
        Text(text)
    }
}









func checkID(studentID: String) -> Bool{
    for number in viewModel.idNumbers{
        if studentID == number {
            return true
        }
    }
    return false
}

}

#Preview {
    CheckView()
}

//Test
