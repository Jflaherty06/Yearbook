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
                VStack() {
                    Text("Buy a Yearbook")
                        .background(.gray)
                        .padding()
                        .font(.title)
                        .foregroundStyle(.black)
                        .shadow(radius: 20)
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                    NavigationStack {
                        InfiniteCampusWebView(url: URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff")!)
                            .frame(width: geometry.size.width * 1, height: geometry.size.height * 0.75)
                            .ignoresSafeArea()
                            .navigationBarTitleDisplayMode(.inline)
                    }
                    Text("To buy a yearbook, please follow the directions below!")
                        .font(.system(size: 17))
                        .foregroundStyle(.black)
                    Text("1. Log into your Infinite Campus with the D214 Staff or Student Sign In")
                    Text("2. Tap the three lines on the top right to open the sidebar and tap on 'Fees'.")
                    Text("3. In your shopping cart, add a yearbook.")
                    Text("If it shows zero dollars, that means you have no fees left to pay, indicating that you have already bought one.")
                }
            }
        }
    }
}



#Preview {
    BuyView()
}
