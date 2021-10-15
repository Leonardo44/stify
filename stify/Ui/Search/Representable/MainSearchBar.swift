//
//  MainSearchBar.swift
//  stify
//
//  Created by Leo Lopez on 14/10/21.
//

import Foundation
import SwiftUI

struct MainSearchBar: UIViewRepresentable {
    @Binding var text: String
    
    func makeUIView(context: UIViewRepresentableContext<MainSearchBar>) -> UISearchBar {
        let searchbar = UISearchBar(frame: .zero)
        searchbar.delegate = context.coordinator
        searchbar.placeholder = "What are we looking for?"
        searchbar.barStyle = .black
        
        return searchbar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = text
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
}
