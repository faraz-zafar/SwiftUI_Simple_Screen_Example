//
//  ContentView.swift
//  SwiftUI_Simple_Screen_Example
//
//  Created by FAr Az on 19.06.24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    var body: some View {
        VStack {
            // Title
            Text("Welcome to SwiftUI")
                .font(.largeTitle)
                .padding()

            // Text Field
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            HStack {
                // Button
                Button(action: {
                    print("Button tapped! Name: \(name)")
                }) {
                    Text("Submit")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                // Button
                Button(action: {
                    name = ""
                    print("clear text field")
                }) {
                    Text("Clear")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
