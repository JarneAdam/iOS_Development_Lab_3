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
                TextEditor(text: .constant(calcEngine.result)).padding(2).frame(width: 100, height: 150).border(Color.black)
                
                Grid {
                    GridRow {
                        ForEach(7..<10) { number in
                            NumberButtonView(number: number) {
                                calcEngine.addNumberText(number: number)
                            }
                        }
                        Button("/") {
                            calcEngine.dividerOperatorPressed()
                        }
                    }
                    GridRow {
                        ForEach(4...6, id: \.self) { number in
                            NumberButtonView(number: number) {
                                calcEngine.addNumberText(number: number)
                            }
                        }
                        Button("*") {
                            calcEngine.multiplierOperatorPressed()
                        }
                    }
                    GridRow {
                        ForEach(1..<4) { number in
                            NumberButtonView(number: number) {
                                calcEngine.addNumberText(number: number)
                            }
                        }
                        Button("-") {
                            calcEngine.minusOperatorPressed()
                        }
                    }
                    GridRow {
                        NumberButtonView(number: 0) {
                            calcEngine.addNumberText(number: 0)
                        }
                        Text("")
                        Text("")
                        Button("+") {
                            calcEngine.addOperatorPressed()
                        }
                    }
                    GridRow {
                        Button("Clear") {
                            calcEngine.clear()
                        }.gridCellColumns(2)
                        Button("Enter") {
                            calcEngine.addNumber()
                        }.gridCellColumns(2)
                    }
                }
            }
           
            Button("Show stack") {
                calcEngine.showStack()
            }
        }
    }
}

#Preview {
    CalculatorView()
}
