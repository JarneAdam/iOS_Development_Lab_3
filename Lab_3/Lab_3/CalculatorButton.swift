//
//  CalculatorButton.swift
//  Lab_3
//
//  Created by Jarne Adam on 08/10/2025.
//

import SwiftUI

struct CalculatorButton: View {
    var label: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(label)
                .frame(maxWidth: .infinity, minHeight: 40)
                .background(.black)
                .foregroundStyle(.white)
                .cornerRadius(5)
        }
    }
}

#Preview {
    CalculatorButton(label: "7", action: {})
}
