//
//  Nahed_2.swift
//  Team6PresentMe
//
//  Created by Nahed Almutairi on 26/03/1446 AH.
//

import SwiftUI

struct Nahed2: View {
    @State private var showInfoSheet = false
    
    var body: some View {
        ZStack {
            // الصفحة الرئيسية
            VStack(spacing: 20) {
                HStack {
                    Spacer()
                    Button(action: {
                        showInfoSheet.toggle() // إظهار صفحة المعلومات
                    }) {
                        Image(systemName: showInfoSheet ? "exclamationmark.circle.fill" : "questionmark.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.black)
                            .padding()
                    }
                }
                
                // محتوى الصفحة الرئيسية
                HStack {
                    Image("body_shape") // استبدل "body_shape" بالصورة المناسبة
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    
                    VStack(alignment: .leading) {
                        Text("Nature")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        HStack(spacing: -10) {
                            Circle().fill(Color(red: 1.0, green: 0.9, blue: 0.85)).frame(width: 40, height: 40)
                            Circle().fill(Color(red: 0.95, green: 0.8, blue: 0.75)).frame(width: 40, height: 40)
                            Circle().fill(Color(red: 0.9, green: 0.7, blue: 0.65)).frame(width: 40, height: 40)
                            Circle().fill(Color(red: 0.8, green: 0.6, blue: 0.45)).frame(width: 40, height: 40)
                            Circle().fill(Color(red: 0.4, green: 0.25, blue: 0.2)).frame(width: 40, height: 40)
                        }
                    }
                }
                
                Divider()
                
                Text("Explore our categories")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.bottom, 10)
                
                // تصنيف الملابس
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    VStack {
                        Image("our_fits") // استبدل بالصورة المناسبة
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("Our fits")
                    }
                    VStack {
                        Image("shirts") // استبدل بالصورة المناسبة
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("Shirts")
                    }
                    VStack {
                        Image("jeans") // استبدل بالصورة المناسبة
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("Jeans")
                    }
                    VStack {
                        Image("dress") // استبدل بالصورة المناسبة
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("Dress")
                    }
                }
                
                Spacer()
                
                // زر السهم في الأسفل
                HStack {
                    Spacer()
                    Button(action: {
                        // الإجراء عند الضغط على السهم
                    }) {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                    }
                    .padding(.bottom, 30)
                    .padding(.trailing, 20)
                }
            }
            .padding()
            .blur(radius: showInfoSheet ? 5 : 0) // تأثير blur عند إظهار صفحة المعلومات
            
            // صفحة المعلومات التي تظهر عند الضغط على الاستفهام
            if showInfoSheet {
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all) // تأثير على الخلفية
                
                VStack {
                    Spacer()
                    
                    VStack {
                        Image(systemName: "questionmark.circle.fill") // استبدل بالصورة المناسبة
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(.top, 20)
                        
                        Text("""
                        We help you discover the perfect styles that fit your body shape and skin undertone. We offer personalized recommendations to make fashion choices easier and tailored just for you. Whether it's casual or formal, we ensure you find the right pieces to match your unique look and feel confident every day.
                        """)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        Button(action: {
                            showInfoSheet.toggle() // إغلاق صفحة المعلومات
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
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 20)
                    
                    Spacer()
                }
                .transition(.move(edge: .bottom)) // حركة الانتقال
                .animation(.easeInOut)
            }
        }
    }
}

#Preview {
    Nahed2()
}
