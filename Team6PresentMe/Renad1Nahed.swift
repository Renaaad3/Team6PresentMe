//
//  Renad2.swift
//  Team6PresentMe
//
//  Created by Nahed Almutairi on 26/03/1446 AH.
//

import SwiftUI

struct Renad1Nahed: View {
    var body: some View {
        VStack {
            Text("Welcome")
                .font(.largeTitle)
                .padding()
        }
        .navigationTitle("Renad1Nahed")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 245/255, green: 245/255, blue: 247/255))
    }
}

#Preview {
    Renad1Nahed()
}

