import SwiftUI

struct Bayan : View {
    var body: some View {
        VStack (spacing: 16) {
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
 .fill(Color(red: 0.95, green: 0.8, blue: 0.75))               .frame(width: 40, height: 100)
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
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 245/255, green: 245/255, blue: 247/255))
        }
        
    }

#Preview {
        Bayan()
    }
    
