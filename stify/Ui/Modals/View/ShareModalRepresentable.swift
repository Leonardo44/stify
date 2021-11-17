//
//  ShareModalRepresentable.swift
//  stify
//
//  Created by Leo Lopez on 16/11/21.
//

import Foundation
import SwiftUI
import UIKit

struct ShareModalRepresentable: UIViewControllerRepresentable {
    @Binding var text: String
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIViewController(context: Context) -> ShareModalVC {
        let shareModal = ShareModalVC()
        shareModal.navigationController?.view.backgroundColor = .clear
        shareModal.view.backgroundColor = .clear
        shareModal.view.superview?.superview?.backgroundColor = .clear
        return shareModal
    }
    
    func updateUIViewController(_ uiViewController: ShareModalVC, context: Context) {
        uiViewController.view.superview?.superview?.backgroundColor = .clear
    }
    
    class Coordinator: NSObject {
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
    }
}
