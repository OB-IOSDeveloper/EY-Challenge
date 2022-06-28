//
//  ViewController.swift
//  CH1-OB
//
//  Created by Omar Buendia on 6/27/22.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectSwiftUIView()
    }
}



enum Colors: String, CaseIterable{
    case blue, red, cyan, gray, purple, orange

    func displayColor() -> String {
        self.rawValue.capitalized
    }
}

struct ColorSelectSwiftUIView: View {
    @State private var selectedColor = Colors.red

        var body: some View {
            Picker(selection: $selectedColor, label: Text("Colors")) {
                ForEach(Colors.allCases, id: \.self) { color in
                    Text(color.displayColor())
                }
            }
            .padding()
            .colorMultiply(color(selectedColor))
            .pickerStyle(SegmentedPickerStyle())
        }

        func color(_ selected: Colors) -> Color {
            switch selected {
            case .blue:
                return .blue
            case .red:
                return .red
            case .cyan:
                return .cyan
            case .gray:
                return .gray
            case .purple:
                return .purple
            case .orange:
                return .orange
            }
        }
}

