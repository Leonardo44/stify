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
    var favoriteAlbumsRows: [GridItem] = [
        GridItem(.fixed(128))
    ]
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            ScrollView {
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
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
