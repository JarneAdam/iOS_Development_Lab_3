//
//  OperatorButtonView.swift
//  Lab_3
//
//  Created by Jarne Adam on 15/10/2025.
//

import SwiftUI

struct OperatorButtonView: View {
    var mathOperator : String
    var code : () -> Void
    
    var body: some View {
        Button(action: code) {
            Text(mathOperator)
                .font(.title2.bold())
                .foregroundColor(.white)
                .frame(width: 35, height: 35)
                .background(Color.orange)
                .cornerRadius(12)
                .shadow(color: .orange.opacity(0.6), radius: 5, x: 0, y: 3)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    OperatorButtonView(mathOperator: "+"){
        print("+")
    }
}
