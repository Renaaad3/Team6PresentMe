import SwiftUI

struct Bayan: View {
    @State private var showInfoSheet = false
    
    var body: some View {
        ZStack {
           
            VStack (spacing: 16) {
                HStack {
                    Spacer()
                    Button(action: {
                        showInfoSheet.toggle()
                    }) {
                        Image(systemName: showInfoSheet ? "exclamationmark.circle.fill" : "questionmark.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.black)
                            .padding()
                    }
                }
                
                HStack (spacing: 20 ){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 165 , height: 165)
                        
                        Image("bodytype")
                            .resizable()
                            .frame(width:80, height: 150)
                            .scaledToFit()
                    }
                    
                    VStack(spacing: -20) {
                        Text("Neture")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        HStack (spacing: -10){
                            Circle()
                                .fill(Color(red: 1.0, green: 0.9, blue: 0.85))
                                .frame(width: 40, height: 100)
                                .overlay(Circle().stroke(Color.gray))
                            
                            Circle()
                                .fill(Color(red: 0.95, green: 0.8, blue: 0.75))
                                .frame(width: 40, height: 100)
                                .overlay(Circle().stroke(Color.gray ))
                            
                            Circle()
                                .fill(Color(red: 0.9, green: 0.7, blue: 0.65))
                                .frame(width: 40, height: 100)
                                .overlay(Circle().stroke(Color.gray ))
                            
                            Circle()
                                .fill(Color(red: 0.8, green: 0.6, blue: 0.45))
                                .frame(width: 40, height: 100)
                                .overlay(Circle().stroke(Color.gray ))
                            
                            Circle()
                                .fill(Color(red: 0.4, green: 0.25, blue: 0.2))
                                .frame(width: 40, height: 100)
                                .overlay(Circle().stroke(Color.gray))
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            .blur(radius: showInfoSheet ? 5 : 0)
            
            if showInfoSheet {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    VStack {
                        Image("info")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 250)
                            .padding(.top, 20)
                        
                        Text("""
                        We help you discover the perfect styles that fit your body shape and skin undertone. We offer personalized recommendations to make fashion choices easier and tailored just for you. Whether it's casual or formal, we ensure you find the right pieces to match your unique look and feel confident every day.
                        """)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Button(action: {
                            showInfoSheet.toggle()
                        }) {
                            Text("Close")
                                .fontWeight(.bold)
                                .padding()
                                .frame(width: 100)
                                .background(Color.black.opacity(0.7))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .padding(.bottom, 20)
                    }
                    .frame(width: 300)
                    .background(Color(red: 245/255, green: 245/255, blue: 247/255))
                    .cornerRadius(15)
                    .shadow(radius: 20)
                    
                    Spacer()
                }
                .transition(.move(edge: .bottom))
                .animation(.easeInOut)
            }
        }
        .background(Color(red: 245/255, green: 245/255, blue: 247/255))
    }
}

#Preview {
    Bayan()
}
