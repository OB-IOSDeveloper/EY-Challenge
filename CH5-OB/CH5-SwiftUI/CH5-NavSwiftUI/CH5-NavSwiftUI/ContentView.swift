//
//  ViewController.swift
//  CH1-OB
//
//  Created by Omar Buendia on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: LogoContentView()) {
                    Text("Go to Logo")
                }
                .offset(y: -60)
                .navigationTitle("EY Logo")
            }
        }
        
    }
}

struct LogoContentView: View {
    var body: some View {
            VStack {
                Image("EY")
                    .padding()
                    .offset(y: -60)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
