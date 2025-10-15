//
//  NumberButtonView.swift
//  Lab_3
//
//  Created by Jarne Adam on 14/10/2025.
//

import SwiftUI

struct NumberButtonView: View {
    var number : Int
    var code : () -> Void
    
    var body: some View {
        Button(action: code) {
            Text("\(number)")
                .font(.title2.bold())
                .foregroundColor(.black)
                .frame(width: 35, height: 35)
                .background(Color(white: 0.9))
                .cornerRadius(12)
                .shadow(color: .gray.opacity(0.4), radius: 3, x: 0, y: 2)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    NumberButtonView(number: 1) {
        print("1")
    }
}

