import SwiftUI
import Foundation
struct Bayan : View {
    var body: some View {
        VStack  {
            HStack {
                Image("bodytype")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                VStack {
                    Text("Neture")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
            }
        }}}
    #Preview {
        Bayan()
    }
