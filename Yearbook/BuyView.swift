//
//  BuyView.swift
//  Yearbook
//
//  Created by carina gatta on 1/19/24.
//

import Foundation
import SwiftUI

struct BuyView: View {
    
    @State var isPresentWebView = false
    
    var body: some View {
        
        
        NavigationStack {
            WebView(url: URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp?status=logoff")!)
                .frame(width:780, height: 600)
                .navigationTitle("Infinite Campus")
                .navigationBarTitleDisplayMode(.inline)
            Text("--------------------------------\nTo buy a yearbook do this\nThen do this\nAnd finally do this")
        }
    }
}



#Preview {
    BuyView()
}
