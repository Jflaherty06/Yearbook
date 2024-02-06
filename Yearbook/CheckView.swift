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
    var body: some View {
        TextField("Enter Student ID", text: $StudentID)
        NavigationLink(destination: BuyView()) {
            Text("Go to buy yearbook")
        }
    }
   
}

#Preview {
    CheckView()
}

//Test
