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
        Button("\(mathOperator)", action: code)
    }
}

#Preview {
    OperatorButtonView(mathOperator: "+"){
        print("+")
    }
}
