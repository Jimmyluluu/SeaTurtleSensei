//
//  MultipleChoiceQuestion.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/24.
//

import SwiftUI

struct IdentifiableGameResult: Identifiable {
    var id = UUID()
    var score: Int
}



struct MultipleChoiceQuestion: View {
    // 輸入題目選項數量
    @State private var totalitem = ""

    //選項數量
    @State private var total = 0
    
    //選項內容
    @State private var content = ""

    
    @State var text: String = ""
    
    @State private var name = ""
    
    @State var TrueFalse = false
    
    @State var temp = 0
    
    let results = [
            IdentifiableGameResult(score: 1),
            IdentifiableGameResult(score: 2),
            IdentifiableGameResult(score: 3),
            IdentifiableGameResult(score: 4),
            IdentifiableGameResult(score: 5)
    ]

    var body: some View {
        ScrollView(.vertical){
            
            TextField("幾個選項", text: $totalitem)
                .frame(width: 300, height: 30)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1))
            
            Button("go") {
                if let total = Int(self.totalitem) {
                    for i in  1 ... total {
                        print("Number is \(i)")
                    }
                    self.TrueFalse = true
                    self.temp = Int(self.totalitem)!
                }
                else {
                    print("not number")
                }
            }.offset(x: 0, y: -10).padding()
            
            if TrueFalse {
                ForEach((1...Int(exactly: self.temp)!), id: \.self) {
                    Text("\($0)")
                    TextField("選項內容", text : $content)
                    .padding()
                    .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(hex: "1A90AA"), lineWidth: 1))
                    .padding()
                }
            }
        }
    }
}

struct MultipleChoiceQuestion_Previews: PreviewProvider {
    static var previews: some View {
        MultipleChoiceQuestion()
    }
}
