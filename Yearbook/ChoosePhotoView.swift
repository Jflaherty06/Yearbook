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
        //Not currently being used in current version of app
        GeometryReader { geometry in
            ZStack{
                Color.gray
                    .ignoresSafeArea()
            VStack() {
                Text("Choose a Yearbook Photo")
                    .font(.system(size: 40))
                Text(" 1. Click the School Portraits button")
                Text("2. Then, Enter your information and click search")
                Text("Once you've done that, you should be able to look at your photos and chose the one you would like to use for the yearbook.")
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


