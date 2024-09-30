//
//  Renad.swift
//  Team6PresentMe
//
//  Created by Nahed Almutairi on 26/03/1446 AH.
//

import Foundation
import SwiftUI


struct Renad: View {
    @State private var selectedCard: Int? = nil // Track selected card

        let bodyShapes = ["Round Shape", "Pear Shape", "Hourglass Shape", "Rectangle Shape", "Inverted Triangle Shape"]

        var body: some View {
            ScrollView { // Add ScrollView to make the page scrollable
                VStack {
                    Text("  Choose Your Body Shape")
                        .font(.largeTitle)
                        .font(.headline)
                        .fixedSize()
                        .padding(.bottom, 0)
                        .frame(maxWidth: .infinity, alignment: .leading)
                              .multilineTextAlignment(.center) .underline(true , color:Color.gray).baselineOffset(15)  .padding()

                    // Cards List
                    VStack(spacing: 20) { // Set spacing between cards
                        ForEach(0..<bodyShapes.count, id: \.self) { index in
                            BodyShapeCard(title: bodyShapes[index], isSelected: selectedCard == index)
                                .onTapGesture {
                                    selectedCard = index // Set selected card
                                }
                                .padding(.horizontal, 17) // Padding for x position
                        }
                    }
                    .padding(.top, 10) // Padding for y position

                    Spacer()
                }
                .padding()
            }
        }
    }

struct BodyShapeCard: View {
    let title: String
    let isSelected: Bool

    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .padding()
        }
        .frame(width: 398, height: 275) // Set specific width and height
        .background(isSelected ? Color.white : Color.white) // Change color when selected
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 5, y: 7)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected ? Color.black : Color.white, lineWidth: 2) // Border color
        )
    }
     
      
    }
  
#Preview {
    Renad()
}
