//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Геннадий Ведерников on 09.11.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

private var currentLight = CurrentLight.red

struct ContentView: View {
    
    @State private var buttonName = "START"
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                VStack {
                    CircleView(color: .red, alpha: currentLight == .red ? 1 : 0.3)
                    CircleView(color: .yellow, alpha: currentLight == .yellow ? 1 : 0.3)
                    CircleView(color: .green, alpha: currentLight == .green ? 1 : 0.3)
                }
                Spacer()
                
                Button(action: {
                    buttonName = "NEXT"
                    nextColor()
                }) {
                    Text(buttonName)
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                .frame(width: 200, height: 70)
                .background(Color.blue)
                .cornerRadius(20)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
