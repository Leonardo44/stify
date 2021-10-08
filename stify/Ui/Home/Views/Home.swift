//
//  Home.swift
//  stify
//
//  Created by Leo Lopez on 29/9/21.
//

import SwiftUI

struct Home: View {
    let recentlyPlayedViewCellColumn = [
            GridItem(.flexible()),
            GridItem(.flexible())
    ]
    let gradient = Gradient(colors: [.black, .purple])
    var favoriteAlbumsRows: [GridItem] = [
        GridItem(.fixed(128))
    ]
    
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.backgroundColor = .black.withAlphaComponent(0.8)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                ScrollView {
                    ZStack {
                        VStack {
                            LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
                                .frame(height: 52)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        
                        VStack {
                            HStack {
                                // Good morning
                                Text("Good morning")
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            
                            // Recentry played
                            LazyVGrid(columns: recentlyPlayedViewCellColumn, alignment: .center, spacing: 8) {
                                ForEach([1, 2, 3, 4, 5, 6], id: \.self) { item in
                                    RecentlyPlayedViewCell()
                                        .frame(height: 64)
                                }
                            }
                                .frame(maxWidth: .infinity)
                            
                            // News album artist you follow
                            VStack {
                                HStack {
                                    Text("New release")
                                        .fontWeight(.medium)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                                NewRealeaseArtistView()
                            }
                            .padding(.bottom, 8)
                            
                            // Song recently played
                            VStack {
                                HStack {
                                    Text("Songs recently played")
                                        .fontWeight(.medium)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                               
                                ScrollView(.horizontal) {
                                    LazyHGrid(rows: favoriteAlbumsRows, spacing: 8) {
                                        ForEach([1, 2, 3, 4, 5, 6], id: \.self) { item in
                                            SongRecentlyPlayedCell()
                                                .frame(width: 96, height: 128)
                                        }
                                    }
                                }
                            }
                            
                            // Favorites album
                            VStack {
                                HStack {
                                    Text("Favorite albums")
                                        .fontWeight(.medium)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                               
                                ScrollView(.horizontal) {
                                    LazyHGrid(rows: favoriteAlbumsRows, spacing: 8) {
                                        ForEach([1, 2, 3, 4, 5, 6], id: \.self) { item in
                                            ArtistAlbum()
                                                .frame(width: 96, height: 128)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("Stify")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
