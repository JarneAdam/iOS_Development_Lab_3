//
//  FunctionButtonView.swift
//  Lab_3
//
//  Created by Jarne Adam on 15/10/2025.
//

import SwiftUI

struct FunctionButtonView: View {
    var function : String
    var code : () -> Void
    
    var body: some View {
        Button(action: code) {
            Text(function)
                .font(.headline.bold())
                .foregroundColor(.white)
                .frame(height: 35)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(12)
                .shadow(color: .blue.opacity(0.6), radius: 5, x: 0, y: 3)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    FunctionButtonView(function: "Clear"){
        print("clear")
    }
}
