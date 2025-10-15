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
        Button("\(function)", action: code)
    }
}

#Preview {
    FunctionButtonView(function: "clear"){
        print("clear")
    }
}
