//
//  BuyView.swift
//  Yearbook
//
//  Created by carina gatta on 1/19/24.
//

import Foundation
import SwiftUI
struct BuyView: View {
    var body: some View {
        GeometryReader { geometry in
            Link(destination: URL(string: "https:www.infinitecampus.com")!, label: {
                Text("infinite campus")
            }) .font(.system(size: 60))
                .font(.title)
                .foregroundStyle(.green)
                .shadow(radius: 20)
            //        .environment(\.openURL, OpenURLAction(handler: handleURL))
        } .padding()
        Text("To buy a yearbook, please follow the directions below!")
            .font(.system(size: 17))
            .foregroundStyle(.black)
        Text("1. Click on the link to get to Infinite Campus.")
        Text("2. On the side bar, click on the option 'Fees'.")
        Text("3. In your shopping cart, add a yearbook.")
    
    }
//    func handleURL(_ url: URL) -> OpenURLAction.Result {
//          
//           return .handled
//       }
            
        }


#Preview {
    BuyView()
}
