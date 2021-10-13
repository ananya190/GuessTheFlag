//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Ananya George on 10/13/21.
//

import SwiftUI

struct FlagImage: View {
    var number: Int
    var countries: [String]
    var body: some View {
        Image(countries[number])
            .renderingMode(.original)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
            .shadow(color: .black, radius: 2)
    }
}

struct FlagImage_Previews: PreviewProvider {
    static var previews: some View {
        FlagImage(number: 0, countries: ["US"])
    }
}
