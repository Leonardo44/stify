//
//  AlbumDetailView.swift
//  stify
//
//  Created by Leo Lopez on 28/10/21.
//

import SwiftUI

struct AlbumDetailView: View {
    let gradient = Gradient(colors: [.purple, .black])
    @State private var isSharePresented = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    // Artist detail
                    VStack {
                        ZStack {
                            VStack {
                                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                                    .frame(height: 196)
                                Spacer()
                            }
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.white)
                                .frame(height: 196)
                                .padding()
                        }
                        
                        HStack {
                            Text("[Artist name]")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.leading, 8)
                        
                        HStack {
                            Text("[Time]")
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.leading, 8)
                        .padding(.top, 4)
                        
                        ZStack {
                            HStack {
                                Button(action: {
                                    print("liked")
                                }, label: {
                                    Label("", systemImage: "heart")
                                })
                                Button(action: {
                                    print("Download")
                                }, label: {
                                    Label("", systemImage: "arrow.down.circle")
                                })
                                Button(action: {
                                    isSharePresented = true
                                }, label: {
                                    Label("", systemImage: "square.and.arrow.up")
                                })
                                Spacer()
                            }
                            
                            VStack {
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        print("Play")
                                    }, label: {
                                        Image(systemName: "play.circle.fill")
                                            .resizable()
                                            .scaledToFit()
                                            .foregroundColor(.purple)
                                            .frame(height: 48)
                                    }).padding()
                                    
                                }
                            }
                        }
                        .padding(.leading, 8)
                        .padding(.top, 4)
                    }
                }
            }
            
        }
        .fullScreenCover(isPresented: $isSharePresented, onDismiss: dismissShareView) {
            ShareModalView()
        }
        .navigationBarTitle("Album - [Name]")
    }
    
    private func dismissShareView() {}
}

struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetailView()
    }
}
