//
//  ContentView.swift
//  Shared
//
//  Created by よしの on 2021/07/18.
//

import SwiftUI

struct ContentView: View {
    let listContents = ["お知らせ１", "お知らせ２", "お知らせ３"]
    var body: some View {
        List(0 ..< listContents.count) { item in
            Text(listContents[item])
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
