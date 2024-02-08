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
        GeometryReader { geometry in
           
            VStack{
                TextField("Enter Student ID", text: $StudentID)
                    .frame(maxWidth: 600, maxHeight: 20)
                    .font(.system(size: 30))
                    .padding()
                    
                NavigationLink(destination: BuyView()) {
                    Text("Go to buy yearbook")
                        .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.1)
                }
                Button {
                    //            if StudentID == {
                    //                purchased = true
                    //                StudentID = ""
                    //                Text("you have purchased a yearbook")
                    //                .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                    //            } else if {
                    //                purchased = false
                    //                StudentID = ""
                    //                Text("you have not purchased a yearbook")
                    //                .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                    //            NavigationLink("Buy a yearbook", destination: BuyView())
                    //            }
                } label: {
                    Text("check")
                }
            }
        }
    }
   
}

#Preview {
    CheckView()
}

//Test
