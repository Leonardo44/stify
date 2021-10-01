//
//  RecentlyPlayedViewCell.swift
//  stify
//
//  Created by Leo Lopez on 30/9/21.
//

import SwiftUI

struct RecentlyPlayedViewCell: View {
    var body: some View {
        GeometryReader { metrics in
            HStack {
                Rectangle()
                .fill(Color.purple)
                .frame(width: metrics.size.width * 0.4)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                
                Text("Example")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                Spacer()
            }
            .background(Color.gray)
            .cornerRadius(12)
        }
    }
}

struct RecentlyPlayedViewCell_Previews: PreviewProvider {
    static var previews: some View {
        RecentlyPlayedViewCell()
    }
}
