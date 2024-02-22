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
    }
//    func handleURL(_ url: URL) -> OpenURLAction.Result {
//          
//           return .handled
//       }
            
        }


#Preview {
    BuyView()
}
