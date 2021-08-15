//
//  ContentView.swift
//  Shared
//
//  Created by よしの on 2021/07/18.
//

import SwiftUI

struct ContentView: View {
    @State private var newTopic = ""
    @State private var listContents = [
        PlaceModel(id:1, name: "東京タワー", latitude: 35.65873739027092, logitude: 139.74549727054767,
                   describe: "東京の名所といえばここ。夜のライトアップが最高に綺麗です。",
                   image: "tokyotower"),
        PlaceModel(id:2, name: "日比谷野外音楽堂", latitude: 35.67252164039376,logitude: 139.75408421691543,
                   describe: "東京の野外ライブといえばここ。どこの席からもステージが見やすい。音漏れもよく聞こえたり",
                   image: "hibiyayagaiongakudou"),
        PlaceModel(id:2, name: "浅草寺", latitude: 35.71484844616984,logitude: 139.79661773785725,
                   describe: "東京屈指の観光名所。ドラマにもよく出てきます。本堂の大きさには圧巻です。お賽銭を準備して向かいましょう。",
                   image: "sensouzi")
        ]
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                
            CircleImage().offset(y: -130).padding(.bottom, -130)
            VStack {
                Text("東京タワー").font(.title).padding(5)
                Text("東京の名所といえばここでしょ！夜のライトアップが最高に綺麗です。").padding(5)
                HStack {
                    Image("footprint")
                    Text("Check IN: ")
                    Text("8/15 (Sun) 19:00")
                }
            }
            HStack {
// TODO: あとで実装
//                TextField("please input", text: $newTopic)
//                Spacer()
//                Button(action: {
//                    listContents.append(newTopic)
//                    newTopic = ""
//                }){
//                    Text("submit!")
//                }
//            }.padding()
            Spacer()
            List(0 ..< listContents.count) { index in
                Text(listContents[index].name)
                
            }
        }
    }
}

struct PlaceModel:Identifiable {
    var id:  Int
    var name: String
    var latitude: Float
    var logitude: Float
    var describe: String
    var image: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
