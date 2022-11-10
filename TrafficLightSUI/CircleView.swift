//
//  CircleView.swift
//  TrafficLightSUI
//
//  Created by Геннадий Ведерников on 10.11.2022.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let alpha: Double
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .opacity(alpha)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}
struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, alpha: 0.3)
    }
}
