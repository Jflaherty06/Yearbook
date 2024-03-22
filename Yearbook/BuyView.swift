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
                Color.gray
                    .ignoresSafeArea()
                Text("Buy a Yearbook")
                Text("To buy a yearbook, click on the link to get to Infinite Campus. Then, go to your fees and add a Yearbook to it ($50). Once you've paid, your fees will show the 50 dollar amount. This does not mean you have to pay again.")
                    .padding()
                    .font(.title)
                    .foregroundStyle(.black)
                    .shadow(radius: 20)
                    .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                NavigationStack {
                    InfiniteCampusWebView(url: URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff")!)
                        .frame(width: geometry.size.width * 1, height: geometry.size.height * 0.75)
                 Color.gray
                       .ignoresSafeArea()
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
}



#Preview {
    BuyView()
}
