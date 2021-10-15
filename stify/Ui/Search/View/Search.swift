//
//  Search.swift
//  stify
//
//  Created by Leo Lopez on 29/9/21.
//

import SwiftUI

struct Search: View {
    // MARK: - Struct
    struct SearchCell: Identifiable {
        let id: String
        let name: String
        let image: String
        let type: SearchCellType
    }
    
    struct CategorySearchCell: Identifiable {
        let id: String
        let text: String
        let type: SearchCellType
    }
    
    // MARK: - Enum
    enum SearchCellType: String {
        case artist
        case song
        case playlist
        case profiles
        case all
    }
    
    // MARK: - Variables
    var CategoryToSearchRows: [GridItem] = [
        GridItem(.fixed(128))
    ]
    
    var searchList = [
        SearchCell(id: "1", name: "Wos", image: "1", type: .artist),
        SearchCell(id: "2", name: "Okupa", image: "1", type: .song),
        SearchCell(id: "3", name: "La matraca", image: "1", type: .playlist),
        SearchCell(id: "4", name: "Queen", image: "1", type: .artist),
        SearchCell(id: "5", name: "Al natural", image: "1", type: .song),
        SearchCell(id: "6", name: "Chill", image: "1", type: .playlist),
        SearchCell(id: "7", name: "Christian Nodal", image: "1", type: .artist),
        SearchCell(id: "8", name: "Rels B", image: "1", type: .artist),
        SearchCell(id: "9", name: "User404", image: "1", type: .profiles),
        SearchCell(id: "10", name: "Ringo starr", image: "1", type: .artist),
        SearchCell(id: "11", name: "Rata Blanca", image: "1", type: .artist),
        SearchCell(id: "12", name: "A mí", image: "1", type: .song),
        SearchCell(id: "13", name: "Bicho music", image: "1", type: .playlist),
        SearchCell(id: "14", name: "Bad Bunny", image: "1", type: .artist),
        SearchCell(id: "15", name: "Careless Whisper", image: "1", type: .song),
        SearchCell(id: "16", name: "George Michael", image: "1", type: .artist),
        SearchCell(id: "17", name: "ElTravieso", image: "1", type: .profiles)
    ]
    var categoriesToSearch = [
        CategorySearchCell(id: "1", text: "All", type: .all),
        CategorySearchCell(id: "2", text: "Artist", type: .artist),
        CategorySearchCell(id: "3", text: "Song", type: .song),
        CategorySearchCell(id: "4", text: "Playlist", type: .playlist),
        CategorySearchCell(id: "5", text: "Profiles", type: .profiles)
    ]
    
    // MARK: - States variables
    @State var text: String = ""
    @State var categoryToSearch: SearchCellType = .all
    
    // MARK: - Constructor
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.backgroundColor = .black.withAlphaComponent(0.8)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
    }
    
    // MARK: - View
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                VStack {
                    MainSearchBar(text: $text) // Search bar
                    
                    // Categories
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: CategoryToSearchRows, spacing: 8) {
                            ForEach(categoriesToSearch, id: \.id) { item in
                                ZStack {
                                    if categoryToSearch == item.type {
                                        Rectangle()
                                            .fill(Color.purple)
                                            .cornerRadius(8)
                                    } else {
                                        Rectangle()
                                            .fill(Color.black)
                                            .cornerRadius(8)
                                    }
                                       
                                    Text(item.text)
                                        .fontWeight(.medium)
                                        .foregroundColor(.white)
                                        .padding(8)
                                     
                                }
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.white, lineWidth: categoryToSearch == item.type ? 0 : 1)
                                    )
                                .cornerRadius(8)
                                .frame(height: 20)
                                .onTapGesture {
                                    categoryToSearch = item.type
                                }
                            }
                        }
                    }.frame(height: 32)
                    
                    VStack {
                        // Search result
                        ScrollView {
                            
                            ForEach(searchList.filter {
                                self.text.isEmpty ? true : $0.name.prefix(text.count).contains(text)
                            }, id: \.id) { item in
                                Text(item.name)
                                    .fontWeight(.medium)
                                    .foregroundColor(.white)
                                    .padding()
                                Spacer()
                            }
                        }
                        .background(Color.red)
                    }
                }
            }
            .navigationBarTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
