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
            ZStack{
                Color.gray
                    .ignoresSafeArea()
                VStack {
                    Text("Buy a Yearbook")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                    Text(" 1.To buy a yearbook, click on the link to get to Infinite Campus.")
                        .foregroundColor(.white)
                    Text("2. Then, go to your fees and add a Yearbook to it ($50).")
                        .foregroundColor(.white)
                    Text("Once you've paid, your fees will show the 50 dollar amount. This does not mean you have to pay again.")
                        .padding()
                        .border(.orange, width: 6)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                    NavigationStack {
//                        InfiniteCampusWebView(url: URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff")!)
                        
                        let url = URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff") ?? URL(string: "https://www.apple.com")
                        InfiniteCampusWebView(url: url!)
                            .frame(width: geometry.size.width * 0.85, height: geometry.size.height * 0.75)
                  
                    }
                }
                .background(.gray)
            }
        }
    }
}


#Preview {
    BuyView()
}
