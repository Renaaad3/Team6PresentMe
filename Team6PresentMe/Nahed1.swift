//
//  Nahed.swift
//  Team6PresentMe
//
//  Created by Nahed Almutairi on 26/03/1446 AH.
//

import SwiftUI

struct Nahed1: View {
    var body: some View {
        VStack {
            // Add the image at the top
            Image("onboarding") // Replace with the actual image name in your assets
                .resizable()
                .scaledToFit()
                .frame(height: 400) // Adjust the height as needed
                .padding(.top, 150) // Padding from the top
            
            // Add the centered text
            Text("Discover your style!")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.top, 30) // Adjust padding as necessary
            
            Spacer() // Pushes the button to the bottom

            // Add the button with arrow icon at the bottom right
            HStack {
                Spacer() // Pushes the button to the right side
                Button(action: {
                    // Define your action here
                }) {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black) // Adjust the color if needed
                }
                .padding(.bottom, 30) // Padding from the bottom
                .padding(.trailing, 20) // Padding from the right
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemGray6)) // Change the background color to your preferred one
    }
}

#Preview {
    Nahed1()
}
