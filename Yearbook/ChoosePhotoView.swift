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
        NavigationStack{
            VipPhotosWebView(url: URL(string: "https://www.vipis.com/group/9bb336c8/john-hersey-high-school")!)
        }
    }
}
#Preview {
    ChoosePhotoView()
}


