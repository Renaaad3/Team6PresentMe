
import Foundation
import SwiftUI


struct Renad: View {
    @State private var selectedCard: Int? = nil
    
    let bodyShapes = ["  Round Shape", " Hourglass Shape", " Rectangle Shape ", " Inverted Triangle Shape", "   Pear Shape"]
    
    let bodyShapeImages = ["Round", "Hourglass", "Rectangle", "Inverted Tringle", "pear"]
    
    let bodyShapeDescriptions = [
        "Characterized by a fuller bust, narrower hips, and broader shoulders, often with extra weight around the midsection.",
        "Characterized by a well-defined waist and balanced bust and hip measurements.",
        "A rectangle body means that the width of your bust, waist, and hips are approximately the same.",
        "Is an analogy that your bust and shoulders are broader than your hips.",
        "Pear body shape is characterised by large hips which are wider than the bust and shoulders."]
    
    var body: some View {
       
            
            ScrollView {
                VStack {
                    Text("  Choose Your Body Shape! ")
                        .font(.custom("American Typewriter", size: 30)).bold()
                        .padding(.bottom, 0)
                        .fixedSize()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.center)
                        .underline(true, color: Color.gray)
                        .baselineOffset(15)
                        .padding()
                    
                    
                    VStack(spacing: 20) {
                        ForEach(0..<bodyShapes.count, id: \.self) { index in
                            BodyShapeCard(
                                title: bodyShapes[index],
                                imageName: bodyShapeImages[index],
                                isSelected: selectedCard == index, description: bodyShapeDescriptions[index]
                            )
                            .onTapGesture {
                                selectedCard = index // Set selected card
                            }
                            .padding(.horizontal, 17) // Padding for x position
                        }
                    }
                    .padding(.top, 10) // Padding for y position
                    
                    Spacer()
                }                .padding()
            }
            
        }
        
        struct BodyShapeCard: View {
            let title: String
            let imageName: String
            let isSelected: Bool
            let description: String
            
            var body: some View {
                HStack { // Use HStack to arrange the text and image
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.custom("American Typewriter", size: 24)).bold()
                            .padding(.bottom, 0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(description)
                            .font(.custom("American Typewriter", size: 18)) // Set custom font and size
                        
                            .foregroundColor(.black) // Style the description
                            .padding(.top, 5)
                    }
                    .padding()
                    
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 66.5, height: 270)
                        .padding()
                }
                .frame(width: 370, height: 275)
                .background(isSelected ? Color.white : Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 7)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(isSelected ? Color.black : Color.white, lineWidth: 2)
                )
            }
                
        }
    }
#Preview {
    Renad()
}
