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
                        Text("新增考試卷")
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
                                    .offset(x: 0, y: 110)
                                Picker(selection: $selection, label: Text("選擇題型")) {
                                    Text("單選題").tag(1)
                                    Text("多選題").tag(2)
                                }.offset(x: 0, y: 30)
                            }.offset(x: 0, y: -300)
                            
                            //輸入題目題號
                            TextField("輸入題目題號", text: $qnum)
                                .foregroundColor(Color(hex: "1A90AA"))
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                                )
                                .frame(width: 250, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(.white)
                                )
                                .offset(x: 0, y: -370)
                                .padding(10)
                            
                            //輸入題目選項數
                            TextField("輸入題目選項數量", text: $inum)
                                .foregroundColor(Color(hex: "1A90AA"))
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                                )
                                .frame(width: 250, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(.white)
                                )
                                .offset(x: 0, y: -370)
                                .padding(10)
                            
                            //輸入題目選項配分
                            TextField("輸入題目選項配分", text: $qgrade)
                                .foregroundColor(Color(hex: "1A90AA"))
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                                )
                                .frame(width: 250, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(.white)
                                )
                                .offset(x: 0, y: -370)
                                .padding(10)
                            
                            //輸入題目敘述
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
                                .offset(x: 0, y: -370)
                                .padding(10)
                            
                            //完成出題，跳出完成出題視窗，即返回首頁
                            NavigationLink(
                                destination: Home()){
                                    Text("FINISH")
                                        .frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
                                }
                                .padding(5)
                        }.offset(x: 0, y: 80)  //新增考卷以下的vstack
                    }.offset(x: 0, y: 55)  //zstack
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


