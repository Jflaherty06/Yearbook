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
//        GeometryReader { geometry in
            Button("Present as full screen cover") {
                        isPresentWebView = true
                    }
                    .fullScreenCover(isPresented: $isPresentWebView) {
                        SafariWebView(url: URL(string: "https://d214il.infinitecampus.org/campus/portal/students/township_214.jsp")!)
                            .ignoresSafeArea()
                            .ignoresSafeArea()
                            .font(.system(size: 60))
                            .font(.title)
                            .foregroundStyle(.green)
                            .shadow(radius: 20)

            
        } .padding()
    }
    struct SafariWebView: UIViewControllerRepresentable {
        let url: URL
        
        func makeUIViewController(context: Context) -> SFSafariViewController {
            return SFSafariViewController(url: url)
        }
        
        func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
            
        }
    }
        }


#Preview {
    BuyView()
}
