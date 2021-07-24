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
    
    // 輸入該題總分
    @State private var totalgrade = ""
    
    // 輸入題目選項數量
    @State private var totalitem = ""
    
    // 輸入題目選項配分
    @State private var qgrade = ""
    
    //輸入題目敘述
    @State private var detail = ""
    
    
    @State var ContentArray = ["A","B","C"]
    
    @State var Fasle = false
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        ZStack {
            Color(hex:"1A90AA").edgesIgnoringSafeArea(.all)
            VStack {
                Text("Sea Turtle Sensei")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(Color(hex: "FFFFF"))
                    .offset(x: -70, y: 0)
                    
                Image("wave")
                    .offset(x: -10, y: -120)
            }.offset(x: 0, y: -170)
            
            ScrollView{
                ZStack{
                    Group{
                        RoundedRectangle(cornerRadius: 25)
                        .fill(Color(hex: "FFFFF"))
                        .frame(width: 350, height: 600)
                        .opacity(0.5)
                        .shadow(color: .gray, radius: 2, x: 3, y: 3)
                        .offset(x: 0, y: -30)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 350, height: 650, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(x: 0, y: 40)
                    }
                    VStack{
    //                    VStack {
    //                        Text("新增題目")
    //                            .foregroundColor(Color(hex: "1A90AA"))
    //                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    //                            .offset(x: 0, y: 50)
    //                            .font(.system(size: 20))
    //
    //                            Path{path in
    //                                path.move(to: CGPoint(x:80, y:30))
    //                                path.addLine(to: CGPoint(x:290, y:30))
    //                            }
    //                            .offset(x: 20, y: 15)
    //                            .stroke(Color(hex: "1A90AA"), lineWidth:2)
    //                    }.offset(x: 0, y: 50)
                        //出題
                        //選擇題型
                        VStack {
                            Text("選擇題型：")
                                .offset(x: -100, y: 0)
                                Picker(selection: $selection, label: Text("選擇題型")) {
                                    Text("單選題").tag(1)
                                    Text("多選題").tag(2)
                                    Text("填充題").tag(3)
                                }
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 0, y: -72)
                        }.offset(x: 0,y: 0)

                                //輸入題目敘述
                        VStack {
                            Text("題目:")
                                .font(.system(size: 20))
                                .offset(x: -120, y: 0)
                            ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
                                TextEditor(text: $detail)
                                    .frame(width: 300, height: 300)
                                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1))
                                    .padding(EdgeInsets(top: -7, leading: -4, bottom: -7, trailing: -4))
                                    .offset(x: 0, y: 10)
                                if detail.isEmpty {
                                    TextField("輸入題目敘述", text: $detail)
                                    .offset(x: 150, y: 100)
                                    .disabled(true)
                                }
                            }
                        }.offset(x: 0, y: -70)
                        HStack{
                            Text("總分：")
                                .font(.system(size: 20))
                                    .offset(x: -110, y: -240)
                            TextField("輸入該題總分", text: $totalgrade)
                                    .foregroundColor(Color(hex: "1A90AA"))
                                    .padding(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1))
                                    .background(RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white))
                                    .frame(width: 140, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: -120, y: -240)
                        }.offset(x: 70, y: 200).padding(5)
                    }
                    HStack {
                    Button(action:{
                            self.Fasle = true
                        }) {
                            Text("Next").frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
                        }.popover(isPresented: $Fasle, content:{
                            MultipleChoiceQuestion()
                        })
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Finish").frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
                        })
                    }.offset(x: 0, y: 270)
                    
                }.offset(x: 0, y: 60)  //zstack
            }
        }
    }
}

struct SetQuestionPreviews: PreviewProvider {
    static var previews: some View {
        SetQuestion()
    }
}


