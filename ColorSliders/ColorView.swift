import SwiftUI

struct ColorLabel: View {
    var value: Double
    var colorName: String
    
    var body: some View {
        HStack {
            Text("\(Int(value * 255))")
                .foregroundColor(.white)
            
            Text(colorName)
                .foregroundColor(.white)
        }
        .padding()
    }
}
