//
//  SonRecentlyPlayedCell.swift
//  stify
//
//  Created by Leo Lopez on 4/10/21.
//

import SwiftUI

struct SongRecentlyPlayedCell: View {
    var body: some View {
        VStack(spacing: 8) {
            VStack {
                Rectangle()
                .fill(Color.purple)
                .frame(height: 72)
            }
            
            HStack {
                Text("[Song name]")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                Spacer()
            }
            Spacer()
        }
    }
}

struct SongRecentlyPlayedCell_Previews: PreviewProvider {
    static var previews: some View {
        SongRecentlyPlayedCell()
    }
}
