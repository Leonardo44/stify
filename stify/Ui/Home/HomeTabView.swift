//
//  HomeTabView.swift
//  stify
//
//  Created by Leo Lopez on 29/9/21.
//

import SwiftUI

struct HomeTabView: View {
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .black.withAlphaComponent(0.8)
        
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().standardAppearance = appearance
        
        if #available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            Search()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            MyLibrary()
                .tabItem {
                    Label("My library", systemImage: "list.dash")
                }
        }
        .accentColor(.white)
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
