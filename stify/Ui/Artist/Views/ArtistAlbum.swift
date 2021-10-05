//
//  ArtistAlbum.swift
//  stify
//
//  Created by Leo Lopez on 4/10/21.
//

import SwiftUI

struct ArtistAlbum: View {
    var body: some View {
        VStack(spacing: 8) {
            VStack {
                Rectangle()
                .fill(Color.purple)
                .frame(height: 72)
            }
            
            HStack {
                Text("[Album name]")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                Spacer()
            }
            HStack {
                Text("[Artist name]")
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .font(.system(size: 13))
                Spacer()
            }
        }
    }
}

struct ArtistAlbum_Previews: PreviewProvider {
    static var previews: some View {
        ArtistAlbum()
    }
}
