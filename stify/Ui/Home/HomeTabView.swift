//
//  HomeTabView.swift
//  stify
//
//  Created by Leo Lopez on 29/9/21.
//

import SwiftUI

struct HomeTabView: View {
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
            UITabBar.appearance().unselectedItemTintColor = .gray
            UITabBar.appearance().backgroundColor = UIColor.gray.withAlphaComponent(0.2)
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
