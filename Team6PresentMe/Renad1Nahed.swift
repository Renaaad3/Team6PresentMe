//
//  Renad2.swift
//  Team6PresentMe
//
//  Created by Nahed Almutairi on 26/03/1446 AH.
//

import SwiftUI

struct Renad1Nahed: View {
    @State private var isSelected = false
    var body: some View {
        VStack {
            Text("")
                .font(.largeTitle)
                .padding()
            Text("Select Your Undertone") .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding(.top, 30).underline(true , color: Color.gray).baselineOffset(15)
            Rectangle()
                            .fill(Color.gray)
                            .frame(width: 150, height: 150)
                            .border(isSelected ? Color.black : Color.clear, width: 5)
                            .onTapGesture {
                                isSelected.toggle()
                            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 245/255, green: 245/255, blue: 247/255))
    }
}
#Preview {
    Renad1Nahed()
}

