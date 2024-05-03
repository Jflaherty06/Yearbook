//
//  BuyView.swift
//  Yearbook
//
//  Created by carina gatta on 1/19/24.
//

import Foundation
import SwiftUI
import SafariServices

struct BuyView: View {
    
    @State private var isPresentWebView = false
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.gray
                    .ignoresSafeArea()
                VStack() {
                    Text("Buy a Yearbook")
                        .font(.system(size: 40))
                    Text(" 1. To buy a yearbook, click on the link to get to Infinite Campus.")
                    Text("2. Then, go to your fees and add a Yearbook to it ($50).")
                    Text("Once you've paid, your fees will show the 50 dollar amount. This does not mean you have to pay again.")
                        .padding()
                        .fontWeight(.bold)
//                        .border(Color(red: 252/255.0, green: 103/255.0, blue: 26/255.0), width: 6)
//                        .font(.subheadline)
//                        .foregroundStyle(.white)
//                        .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                    NavigationStack {
                        InfiniteCampusWebView(url: URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff")!)
                            .frame(width: geometry.size.width * 1, height: geometry.size.height * 0.80)
                        
                    }
                    .background(.gray)
                }
            }
        }
    }
}

#Preview {
    BuyView()
}
