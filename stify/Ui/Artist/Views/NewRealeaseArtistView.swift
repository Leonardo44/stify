//
//  NewRealeaseArtistView.swift
//  stify
//
//  Created by Leo Lopez on 4/10/21.
//

import SwiftUI

struct NewRealeaseArtistView: View {
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .fill(Color.purple)
                    .frame(width: 40, height: 40)
                
                HStack {
                    Text("[Artist name]")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                   
                }
                Spacer()
            }
            .frame(height: 40)
            
            HStack {
                VStack(spacing: 8) {
                    VStack {
                        Rectangle()
                        .fill(Color.purple)
                        .frame(height: 128)
                    }
                    HStack {
                        Text("[Artist name]")
                            .fontWeight(.medium)
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                        Spacer()
                    }
                }
                .frame(width: 128)
                Spacer()
            }.padding(.leading, 8)
        }
    }
}

struct NewRealeaseArtistView_Previews: PreviewProvider {
    static var previews: some View {
        NewRealeaseArtistView()
    }
}
