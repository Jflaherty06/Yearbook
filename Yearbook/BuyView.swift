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
    //Webpage won't load on school ipad but on a newer one everything here works fine
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
                    NavigationStack {
                        InfiniteCampusWebView(url: URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff")!)
                            .frame(width: geometry.size.width * 1, height: geometry.size.height * 0.80)
                        
                        let url = URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff") ?? URL(string: "https://www.apple.com")
                        
                        InfiniteCampusWebView(url: url!)
                            .frame(width: geometry.size.width * 0.85, height: geometry.size.height * 0.75)
                  
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
