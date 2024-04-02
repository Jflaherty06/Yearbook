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
            VStack() {
                Color.black
                    .ignoresSafeArea()
                Text("Buy a Yearbook")
                Text("To buy a yearbook, click on the link to get to Infinite Campus.")
                Text("Then, go to your fees and add a Yearbook to it ($50).")
                Text("Once you've paid, your fees will show the 50 dollar amount. This does not mean you have to pay again.")
                    .padding()
                    .border(.orange, width: 6)
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    .shadow(radius: 20)
                    .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                NavigationStack {
                    InfiniteCampusWebView(url: URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff")!)
                        .frame(width: geometry.size.width * 1, height: geometry.size.height * 0.75)
                 
                }
            }
        }
    }
}



#Preview {
    BuyView()
}
