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
                    .padding()
                    .font(.title)
                    .foregroundStyle(.black)
                    .shadow(radius: 20)
                    .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                NavigationStack {
                    SafariWebView(url: URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff")!)
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
