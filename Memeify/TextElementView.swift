import SwiftUI

struct TextElementView: View {
    let element: TextElement
    var body: some View {
        Text(element.text)
            .foregroundColor(.white)
            .font(.system(size: 24, weight: .bold))
            .hardShadow()
    }
}

extension View {
    func hardShadow() -> some View {
        self
            .shadow(color: .black, radius: 0.4)
            .shadow(color: .black, radius: 0.4)
            .shadow(color: .black, radius: 0.4)
            .shadow(color: .black, radius: 0.4)
            .shadow(color: .black, radius: 0.4)
    }
}


struct TextElementView_Previews: PreviewProvider {
    static var previews: some View {
        let text = TextElement(text: "Hello world", position: .zero)
        let colors = [Color.white, .black, .blue, .red, .green]

        VStack {
            ForEach(colors, id: \.self) { color in
                TextElementView(element: text)
                    .padding()
                    .background(color)
            }
        }
    }
}
