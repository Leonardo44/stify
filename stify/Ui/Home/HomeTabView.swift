//
//  HomeTabView.swift
//  stify
//
//  Created by Leo Lopez on 29/9/21.
//

import SwiftUI

struct HomeTabView: View {
    init() {
        
    }
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            Search()
                .tabItem {
                    Label("Home", systemImage: "magnifyingglass")
                }
            MyLibrary()
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }
        }
        .accentColor(.white)
        .onAppear {
            UITabBar.appearance().isTranslucent = true
            UITabBar.appearance().unselectedItemTintColor = .black
            UITabBar.appearance().barTintColor = UIColor.gray.withAlphaComponent(0.2)
            UITabBar.appearance().backgroundColor =  UIColor.gray.withAlphaComponent(0.2)
            UITabBar.appearance().tintColor = UIColor.gray.withAlphaComponent(0.2)
            
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = .none
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
