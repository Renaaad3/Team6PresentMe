import SwiftUI

struct Bayan: View {
    let categories = ["Our fits", "Shirts", "Jeans", "Dress"]
    var selectedImage: String? = nil
    
    let images = ["ourfits_image", "shirts_image", "jeans_image", "dress_image"]
    @State private var selectedCategory: String = "Main Page"
    
    let adaptiveColumn = [GridItem(.adaptive(minimum: 165), spacing: 20)]
    
    var body: some View {
        NavigationView {
            VStack (spacing: 16) {
                
                // الجزء العلوي من الصفحة
                HStack (spacing: 20) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: 165, height: 165)
                        
                        if let selectedImage = selectedImage {
                            
                            Image(selectedImage)
                                .resizable()
                                .frame(width: 80, height: 150)
                                .scaledToFit()
                                .frame(width: 165, height: 165)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(radius: 4, x: 0, y: 2)
                            
                        }
                    }
                        
                        VStack (spacing: 20){
                            Text("Neture")
                                .font(.largeTitle)
                                .multilineTextAlignment(.leading)
                                .font(.custom("American Typewriter", size: 18))
                            
                            
                            // الألوان
                            HStack (spacing: -10) {
                                Circle()
                                    .fill(Color(red: 1.0, green: 0.9, blue: 0.85))
                                    .frame(width: 40, height: 40)
                                    .overlay(Circle().stroke(Color.gray))
                                
                                Circle()
                                    .fill(Color(red: 0.95, green: 0.8, blue: 0.75))
                                    .frame(width: 40, height: 40)
                                    .overlay(Circle().stroke(Color.gray))
                                
                                Circle()
                                    .fill(Color(red: 0.9, green: 0.7, blue: 0.65))
                                    .frame(width: 40, height: 40)
                                    .overlay(Circle().stroke(Color.gray))
                                
                                Circle()
                                    .fill(Color(red: 0.8, green: 0.6, blue: 0.45))
                                    .frame(width: 40, height: 40)
                                    .overlay(Circle().stroke(Color.gray))
                                
                                Circle()
                                    .fill(Color(red: 0.4, green: 0.25, blue: 0.2))
                                    .frame(width: 40, height: 40)
                                    .overlay(Circle().stroke(Color.gray))
                            }
                        }
                    }
                    .padding(.horizontal)
                    
                    Divider()
                    
                    // عنوان الفئات
                    Text("Explore our categories")
                        .font(.custom("American Typewriter", size: 18))
                        .padding(.horizontal)
                    
                    // المربعات
                    ScrollView {
                        LazyVGrid(columns: adaptiveColumn, spacing: 20) {
                            ForEach(0..<categories.count, id: \.self) {
                                index in NavigationLink(destination: Sara()) {
                                    
                                    VStack {
                                        Image("ourfits_image")
                                            .resizable()
                                            .frame(width: 80, height: 140)
                                            .scaledToFit()
                                        
                                        
                                        
                                        Text("Our fits")
                                            .font(.custom("American Typewriter", size: 18))
                                            .foregroundColor(.black)
                                    }
                                    .frame(width: 165, height: 165)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(radius: 4, x: 0, y: 2)
                                }
                                .simultaneousGesture(TapGesture().onEnded {
                                    selectedCategory = categories[index]
                                })
                            }
                        }
                        .padding()
                    }
                    
                    Spacer()
                }
                .navigationTitle(selectedCategory)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 245/255, green: 245/255, blue: 247/255))
            }
        }
    }
    struct Bayan_Previews: PreviewProvider {
        static var previews: some View {
            Bayan(selectedImage: "ourfits_image")
        }
    }
