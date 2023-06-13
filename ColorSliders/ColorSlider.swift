


import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var colorName: String
    
    var body: some View {
        HStack {
            Text(colorName)
                .foregroundColor(Color(red: 1 - value, green: 1 - value, blue: 1 - value))
                .frame(width: 60)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.white, lineWidth: 2)
                )
            
            Slider(value: $value, in: 0...1)
            
            Text("\(Int(value * 255))")
                .frame(width: 40)
        }
        .padding(.horizontal)
    }
}
