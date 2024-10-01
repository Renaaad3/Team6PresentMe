//
//  Renad2.swift
//  Team6PresentMe
//
//  Created by Nahed Almutairi on 26/03/1446 AH.
//

import SwiftUI

struct Renad1Nahed: View {
    @State private var isSelected = false
    @State private var height: Int = 170
    @State private var weight: Int = 50
    
    @State private var selectedOption: String? = nil
    @State private var selectedColorForNature: Color? = nil
    @State private var selectedColorForCool: Color? = nil
    @State private var selectedColorForWarm: Color? = nil
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                Text("Enter Your Body Size")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .underline(true, color: Color.gray)
                    .padding(.top, 20)

                VStack(spacing: 15) {
                    ZStack {
                        VStack(spacing: 10) {
                            Stepper("Weight \(weight)", onIncrement: { weight += 1 }, onDecrement: { weight -= 1 })
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)

                            Slider(value: Binding(
                                get: { Double(weight) },
                                set: { weight = Int($0) }
                            ), in: 30...200, step: 1)
                            .accentColor(.blue)
                        }
                        .padding()
                        .frame(width: 340)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                    }
                    
                    ZStack {
                        VStack(spacing: 10) {
                            Stepper("Height \(height)", onIncrement: { height += 1 }, onDecrement: { height -= 1 })
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)

                            Slider(value: Binding(
                                get: { Double(height) },
                                set: { height = Int($0) }
                            ), in: 30...200, step: 1)
                            .accentColor(.blue)
                        }
                        .padding()
                        .frame(width: 340)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                    }
                }

                Text("Select Your Undertone")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .underline(true, color: Color.gray)

                VStack(spacing: 15) {
                    UndertoneOption(
                        label: "Nature",
                        colors: [
                            Color(red: 1.0, green: 0.9, blue: 0.85),
                            Color(red: 0.95, green: 0.8, blue: 0.75),
                            Color(red: 0.9, green: 0.7, blue: 0.65),
                            Color(red: 0.8, green: 0.6, blue: 0.45),
                            Color(red: 0.4, green: 0.25, blue: 0.2)
                        ],
                        isSelected: selectedOption == "Nature",
                        selectedColor: $selectedColorForNature,
                        onTap: {
                            selectedOption = selectedOption == "Nature" ? nil : "Nature"
                            selectedColorForNature = nil
                        }
                    )

                    UndertoneOption(
                        label: "Cool",
                        colors: [
                            Color(red: 1.0, green: 0.9, blue: 0.85),
                            Color(red: 0.95, green: 0.8, blue: 0.75),
                            Color(red: 0.9, green: 0.7, blue: 0.65),
                            Color(red: 0.8, green: 0.6, blue: 0.45),
                            Color(red: 0.4, green: 0.25, blue: 0.2)
                        ],
                        isSelected: selectedOption == "Cool",
                        selectedColor: $selectedColorForCool,
                        onTap: {
                            selectedOption = selectedOption == "Cool" ? nil : "Cool"
                            selectedColorForCool = nil
                        }
                    )

                    UndertoneOption(
                        label: "Warm",
                        colors: [
                            Color(red: 1.0, green: 0.9, blue: 0.85),
                            Color(red: 0.95, green: 0.8, blue: 0.75),
                            Color(red: 0.9, green: 0.7, blue: 0.65),
                            Color(red: 0.8, green: 0.6, blue: 0.45),
                            Color(red: 0.4, green: 0.25, blue: 0.2)
                        ],
                        isSelected: selectedOption == "Warm",
                        selectedColor: $selectedColorForWarm,
                        onTap: {
                            selectedOption = selectedOption == "Warm" ? nil : "Warm"
                            selectedColorForWarm = nil
                        }
                    )
                }
                
                HStack {
                    Spacer()
                   
                    NavigationLink(destination: Renad()) {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                    }
                    .disabled(selectedColorForNature == nil && selectedColorForCool == nil && selectedColorForWarm == nil)
                    .padding(.bottom, 1)
                    .padding(.trailing, 20)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 245/255, green: 245/255, blue: 247/255))
        }
    }
}

struct UndertoneOption: View {
    var label: String
    var colors: [Color]
    var isSelected: Bool
    @Binding var selectedColor: Color?
    var onTap: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Text(label)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Spacer()
                
                HStack(spacing: -15) {
                    ForEach(colors, id: \.self) { color in
                        Circle()
                            .fill(color)
                            .frame(width: 40, height: 40)
                            .overlay(
                                Circle()
                                    .stroke(selectedColor == color && isSelected ? Color.black : Color.clear, lineWidth: 2)
                            )
                            .onTapGesture {
                                if isSelected {
                                    selectedColor = selectedColor == color ? nil : color
                                }
                            }
                    }
                }
            }
            .padding()
            .frame(width: 340, height: 90)
            .background(RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .shadow(radius: 5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(isSelected ? Color.black : Color.clear, lineWidth: 2)
                            ))
            .onTapGesture {
                onTap()
            }
        }
    }
}

#Preview {
    Renad1Nahed()
}
