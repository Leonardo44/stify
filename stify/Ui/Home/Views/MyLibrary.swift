//
//  MyLibrary.swift
//  stify
//
//  Created by Leo Lopez on 29/9/21.
//

import SwiftUI

struct MyLibrary: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Text("My library")
        }
    }
}

struct MyLibrary_Previews: PreviewProvider {
    static var previews: some View {
        MyLibrary()
    }
}
