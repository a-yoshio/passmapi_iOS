//
//  TopImage.swift
//  passmapi_iOS (iOS)
//
//  Created by よしの on 2021/08/14.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("tokyotower")
            .resizable()
            .frame(width: 200.0, height: 200.0, alignment: .leading)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
