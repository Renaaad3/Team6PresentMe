//
//  Nahed.swift
//  Team6PresentMe
//
//  Created by Nahed Almutairi on 26/03/1446 AH.
//

import SwiftUI

import SwiftUI

struct Nahed1: View {
    var body: some View {
        NavigationStack { // تأكد أنك تستخدم NavigationStack
            VStack {
                // إضافة الصورة
                Image("onboarding") // تأكد من وجود الصورة في Assets
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                    .padding(.top, 150)
                
                // إضافة النص في المنتصف
                Text("Discover your style!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.top, 30)
                
                Spacer() // لدفع الزر إلى الأسفل

                // زر التنقل إلى الصفحة الثانية
                HStack {
                    Spacer() // لدفع الزر إلى اليمين
                    NavigationLink(destination: Renad1Nahed()) {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                    }
                    .padding(.bottom, 30)
                    .padding(.trailing, 20)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 245/255, green: 245/255, blue: 247/255))
        }
    }
}

#Preview {
    Nahed1()
}
