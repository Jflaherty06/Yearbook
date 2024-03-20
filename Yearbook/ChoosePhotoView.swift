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
            Text("Placeholder")
                .font(.system(size: 60))
                .font(.title)
                .foregroundStyle(.orange)
                .shadow(radius: 20)
                .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
        NavigationStack{
            VipPhotosWebView(url: URL(string: "https://www.vipis.com/group/9bb336c8/john-hersey-high-school")!)
        }
    }
}
#Preview {
    ChoosePhotoView()
}


