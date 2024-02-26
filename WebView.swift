//
//  WebView.swift
//  Yearbook
//
//  Created by Jak Flaherty on 2/22/24.
//

import Foundation
import SwiftUI
import WebKit

struct SafariWebView: UIViewRepresentable {
    
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
