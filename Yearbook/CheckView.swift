//
//  CheckView.swift
//  Yearbook
//
//  Created by Thomas Niezyniecki on 1/19/24.
//

import Foundation
import SwiftUI

struct CheckView: View {
    @State var StudentID = ""
    @State var purchased:Bool = true
    var body: some View {
        TextField("Enter Student ID", text: $StudentID)
        NavigationLink(destination: BuyView()) {
            Text("Go to buy yearbook")
        }
//        Button {
//            if StudentID == {
//                purchased = true
//                StudentID = ""
//            } else if {
//                purchased = false
//                StudentID = ""
//            }
//        } label: {
//            Text("check")
//        }

    }
   
}

#Preview {
    CheckView()
}

//Test
