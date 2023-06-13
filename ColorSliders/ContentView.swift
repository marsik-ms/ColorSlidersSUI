import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var colorName: String
    
    var body: some View {
        HStack {
            Text(colorName)
                .foregroundColor(.black)
                .frame(width: 50, alignment: .leading)
                
            
            Slider(value: $value, in: 0...1)
            
            Text("\(Int(value * 255))")
                .frame(width: 40)
                
        }
        .padding(.horizontal)
    }
}

struct ContentView: View {
    @State var redValue: Double = 0.5
    @State var greenValue: Double = 0.5
    @State var blueValue: Double = 0.5
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea(.all)
            
            VStack {
              
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color(red: redValue, green: greenValue, blue: blueValue))
                    .frame(height: 200)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 2)
                    )
                    .padding(10)
                
                ColorSlider(value: $redValue, colorName: "Red")
                    .accentColor(.red)
                    .padding(.horizontal)
                
                ColorSlider(value: $greenValue, colorName: "Green")
                    .accentColor(.green)
                    .padding(.horizontal)
                
                ColorSlider(value: $blueValue, colorName: "Blue")
                    .accentColor(.blue)
                    .padding(.horizontal)
                
                Spacer()
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
