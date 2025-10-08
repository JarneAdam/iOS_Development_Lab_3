import SwiftUI

struct CalculatorView: View {
    @State private var result = ""

    var body: some View {
        VStack {
            HStack{
                TextEditor(text: .constant(result))
                    .frame(width: 100, height: 150)
                    .border(Color.gray)
                    .background(Color.white)
                    .padding()
                    .disabled(true)
                
                Grid {
                    GridRow {
                        ForEach(7..<10) { number in
                            CalculatorButton(label: "\(number)") {
                                // voorlopig leeg
                            }
                        }
                        CalculatorButton(label: "/"){
                            
                        }
                    }
                
                    GridRow {
                        ForEach(4..<7) { number in
                            CalculatorButton(label: "\(number)") {
                                // voorlopig leeg
                            }
                        }
                        CalculatorButton(label: "*"){
                            
                        }
                    }
                    
                    GridRow {
                        ForEach(1..<4) { number in
                            CalculatorButton(label: "\(number)") {
                                // voorlopig leeg
                            }
                        }
                        CalculatorButton(label: "-"){
                            
                        }
                    }
                    
                    GridRow {
                        CalculatorButton(label: "0") {
                            // voorlopig leeg
                        }
                        Text("")
                        Text("")
                        CalculatorButton(label: "+"){
                            
                        }
                    }
                    
                    GridRow {
                        CalculatorButton(label: "Clear") {
                            // voorlopig leeg
                        }
                        .gridCellColumns(2)
                        CalculatorButton(label: "Enter"){
                            
                        }
                        .gridCellColumns(2)
                    }
                }
                .padding()
            }
        }
        .padding()
        Button("SHOW STACK") {
            // voorlopig leeg
        }
        .gridCellColumns(2)
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(8)
    }
}

#Preview {
    CalculatorView()
}
