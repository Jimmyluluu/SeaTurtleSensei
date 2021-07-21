//
//  DatePicker.swift
//  SeaTurtleSensei
//
//  Created by 林哲瑋 on 2021/7/18.
//

import SwiftUI

struct SetQuestion: View {
    @State private var item = ""
    @State private var detail = ""
    @State private var selection = 1
    var body: some View {
        ZStack {
            Color(hex:"1A90AA").edgesIgnoringSafeArea(.all)
            Image("wave")
                .offset(x: -10, y: 330)
            
            Text("Sea Turtle Sensei")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .offset(x: 0, y: -350)
            
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(hex: "FFFFF"))
                    .frame(width: 350, height: 450)
                    .opacity(0.5)
                    .shadow(color: .gray, radius: 2, x: 3, y: 3)
                
                Text("新增考試卷")
                    .foregroundColor(Color(hex: "1A90AA"))
                    .offset(x: 0, y: -160)
                    .font(.system(size: 20))
                    .frame(width: 350, height: 380)
                    .background(Color.white)
            
                Path{path in
                        path.move(to: CGPoint(x:80, y:30))
                        path.addLine(to: CGPoint(x:290, y:30))
                    }
                        .offset(x: 20, y: 215)
                        .stroke(Color(hex: "1A90AA"), lineWidth:2)
                VStack{
                    VStack {
                        Picker(selection: $selection, label: Text("選擇題型")) {
                            Text("單選題").tag(1)
                            Text("多選題").tag(2)
                        }
                    }.offset(x: 0, y: -40)
//                    TextField("選擇題型", text: $item)
//                        .foregroundColor(Color(hex: "1A90AA"))
//                        .padding()
//                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
//                        )
//                        .background(
//                            RoundedRectangle(cornerRadius: 10)
//                                .foregroundColor(.white)
//                        )
//                        .autocapitalization(.none)
//                        .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                        .padding(20)
                    
                    TextField("輸入題目敘述", text: $detail)
                        .foregroundColor(Color(hex: "1A90AA"))
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                        )
                        .frame(width: 250, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                        )
                        
                        .offset(x: 0, y: -100)
                        .padding(20)
                }.offset(x: 0, y: -10)
                
                NavigationLink(
                    destination: Home()){
                        Text("FINISH")
                            .frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
                    }
                    .offset(x: 0, y: 130)
                    .padding(5)
            }.offset(x: 0, y: -40)
        }
    }
}

struct SetQuestionPreviews: PreviewProvider {
    static var previews: some View {
        SetQuestion()
    }
}


