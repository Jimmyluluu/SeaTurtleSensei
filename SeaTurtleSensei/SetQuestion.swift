//
//  DatePicker.swift
//  SeaTurtleSensei
//
//  Created by 林哲瑋 on 2021/7/18.
//

import SwiftUI

struct SetQuestion: View {
    //選擇題型的下拉式選單
    @State private var selection = 1
    
    // 輸入題目題號
    @State private var qnum = ""
    
    // 輸入題目選項數量
    @State private var inum = ""
    
    // 輸入題目選項配分
    @State private var qgrade = ""
    
    //輸入題目敘述
    @State private var detail = ""
    
    
    
    
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
            ScrollView(.vertical){
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color(hex: "FFFFF"))
                            .frame(width: 350, height: 1000)
                            .opacity(0.5)
                            .shadow(color: .gray, radius: 2, x: 3, y: 3)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 350, height: 990, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(x: 0, y: 20)
                        Text("新增題目")
                            .foregroundColor(Color(hex: "1A90AA"))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .offset(x: 0, y: -450)
                            .font(.system(size: 20))
                    
                        Path{path in
                                path.move(to: CGPoint(x:80, y:30))
                                path.addLine(to: CGPoint(x:290, y:30))
                            }
                            .offset(x: 20, y: 40)
                            .stroke(Color(hex: "1A90AA"), lineWidth:2)
                    
                        VStack{
                            
                            //選擇題型
                            VStack {
                                Text("選擇題型")
                                    .background(Color(.white))
                                    .offset(x: -90, y: 143)
                                Picker(selection: $selection, label: Text("選擇題型")) {
                                    Text("單選題").tag(1)
                                    Text("多選題").tag(2)
                                    Text("填充題").tag(3)
                                }
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 0, y: 70)
                            }.offset(x: 0, y: -360)
                            
                            //輸入題目敘述
                            VStack {
                                  Text("Testing Placeholder Example")
                                  ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                                    TextEditor(text: $detail)
                                      .padding(EdgeInsets(top: -7, leading: -4, bottom: -7, trailing: -4)) // fix padding not aligning with TextField
                                    if detail.isEmpty {
                                      TextField("Placeholder text here", text: $detail)
                                        .disabled(true) // don't allow for it to be tapped
                                    
                                  }
                                }
                              }
                            
                            VStack{
                                NavigationLink(
                                    destination: Home()){
                                        Text("FINISH")
                                            .frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(.white)
                                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
                                    }
                                    .padding(5)
                            }.offset(x: 0, y: 80)  //題型以下的vstack
                            
                        }.offset(x: 0, y: 80)  //新增考卷以下的vstack
                    }.offset(x: 0, y: 60)  //zstack
                }  //vstack
            }  //scrollview
        }
    }
}

struct SetQuestionPreviews: PreviewProvider {
    static var previews: some View {
        SetQuestion()
    }
}


