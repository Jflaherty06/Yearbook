//
//  ChoosePhoto.swift
//  Yearbook
//
//  Created by Jak Flaherty on 1/19/24.
//

import Foundation
import SwiftUI

struct ChoosePhotoView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Color.gray
                    .ignoresSafeArea()
            VStack() {
                Text("Choose a Yearbook Photo")
                    .font(.system(size: 40))
                Text(" 1. To buy a yearbook, click on the link to get to Infinite Campus.")
                Text("2. Then, go to your fees and add a Yearbook to it ($50).")
                Text("Once you've paid, your fees will show the 50 dollar amount. This does not mean you have to pay again.")
                    .padding()
                    .border(.orange, width: 6)
                    .font(.subheadline)
                    .foregroundStyle(.white)
                    .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                NavigationStack {
                    let url = URL(string: "https://www.vipis.com/group/9bb336c8/john-hersey-high-school") ?? URL(string: "https://www.apple.com")
                    VipPhotosWebView(url: url!)
                        .frame(width: geometry.size.width * 0.85, height: geometry.size.height * 0.75)

//                    InfiniteCampusWebView(url: URL(string: "https://www.vipis.com/group/9bb336c8/john-hersey-high-school")!)
                        
                    
                }
            }
            .background(.gray)
        }
    }
    }
}
#Preview {
    ChoosePhotoView()
}


