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
