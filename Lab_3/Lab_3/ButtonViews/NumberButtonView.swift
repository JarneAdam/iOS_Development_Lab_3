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
        Button("\(number)", action: code)
    }
}

#Preview {
    NumberButtonView(number: 1) {
        print("1")
    }
}
