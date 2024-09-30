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
    
    var body: some View {
        VStack {
            
            VStack {
                
              Text("Enter Your Body Size").font(.largeTitle)
                    .multilineTextAlignment(.center) .underline(true , color:Color.gray).baselineOffset(15)  .padding()

                ZStack {
                    VStack {
                        
                        Stepper {Text("Weight \(weight)")
                        } onIncrement: { weight += 1
                        } onDecrement: {weight -= 1
                        }
                
                        
                                  .font(.headline)
                                  .padding(.bottom, 0)
                                  .frame(maxWidth: .infinity, alignment: .leading)

                        Slider(value: Binding(
                                                   get: { Double(weight) },
                                                   set: { weight = Int($0) }
                                               ), in: 30...200, step: 1)
                                               .accentColor(.blue)
                          }
                          .padding()
                          .frame(height: 103.17)
                          .frame(width: 355.17)
                          .background(Color.white) // Background of the VStack
                          .cornerRadius(10) // Rounded corners for the VStack
                          .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                      }
                    
                      .padding(.top, 30)
                // Adjust the top padding as needed
                  }
            ZStack {
                      VStack {
                          Stepper {Text("Height \(height)")
                          } onIncrement: { height += 1
                          } onDecrement: {height -= 1
                          }
                          
                          .font(.headline)
                          .padding(.bottom, 0)
                          .frame(maxWidth: .infinity, alignment: .leading)

                          Slider(value: Binding(
                                                     get: { Double(height) },
                                                     set: { height = Int($0) }
                                                 ), in: 30...200, step: 1)
                                                 .accentColor(.blue)
                      }
                      .padding()
                      .frame(height: 103.17)
                      .frame(width: 355.17)
                      .background(Color.white) // Background of the VStack
                      .cornerRadius(10) // Rounded corners for the VStack
                      .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                  }
                
            Spacer()
                            
                                .padding(.bottom)
                                .padding(.trailing, 30)
                            
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
