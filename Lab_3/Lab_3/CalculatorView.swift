//
//  CalculatorView.swift
//  Lab_3
//
//  Created by Jarne Adam on 14/10/2025.
//

import SwiftUI

struct CalculatorView: View {
    @State var calcEngine = CalcEngine()
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                TextEditor(text: .constant(calcEngine.result)).padding(2).frame(width: 150, height: 200).border(Color.black)
                
                Grid {
                    GridRow {
                        ForEach(7..<10) { number in
                            NumberButtonView(number: number) {
                                calcEngine.addNumberText(number: number)
                            }
                        }
                        OperatorButtonView(mathOperator: "/") {
                            calcEngine.dividerOperatorPressed()
                        }
                    }
                    GridRow {
                        ForEach(4...6, id: \.self) { number in
                            NumberButtonView(number: number) {
                                calcEngine.addNumberText(number: number)
                            }
                        }
                        OperatorButtonView(mathOperator: "*") {
                            calcEngine.multiplierOperatorPressed()
                        }
                    }
                    GridRow {
                        ForEach(1..<4) { number in
                            NumberButtonView(number: number) {
                                calcEngine.addNumberText(number: number)
                            }
                        }
                        OperatorButtonView(mathOperator: "-") {
                            calcEngine.minusOperatorPressed()
                        }
                    }
                    GridRow {
                        NumberButtonView(number: 0) {
                            calcEngine.addNumberText(number: 0)
                        }
                        Text("")
                        Text("")
                        OperatorButtonView(mathOperator: "+") {
                            calcEngine.addOperatorPressed()
                        }
                    }
                    GridRow {
                        FunctionButtonView(function: "Clear") {
                            calcEngine.clear()
                        }.gridCellColumns(2)
                        FunctionButtonView(function: "Enter") {
                            calcEngine.addNumber()
                        }.gridCellColumns(2)
                    }
                }
                .frame(maxWidth: 200, maxHeight: 200)
            }
            FunctionButtonView(function: "Show stack") {
                calcEngine.showStack()
            }
            .frame(maxWidth: 100)
        }
    }
}

#Preview {
    CalculatorView()
}
