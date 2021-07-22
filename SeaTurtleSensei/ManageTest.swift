//
//  ManageTest.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/21.
//

import SwiftUI

struct ManageTest: View {
    var body: some View {
        ZStack{
            Color(hex:"00648E").edgesIgnoringSafeArea(.all)
            Text("Sea Turtle Sensei")
                .font(.system(size: 20))
                .foregroundColor(Color(hex: "CCF6FF"))
                .offset(x: 0, y: -355)
            VStack{
                Image("Cloud")
                    .offset(x: 0, y: 60)
                Rectangle()
                    .foregroundColor(Color(hex: "FFFFF"))
                    .frame(width: 400, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: 50)
                    .padding(-10)
                Rectangle()
                    .foregroundColor(Color(hex: "F2F2F2"))
                    .offset(x: 0, y: 50)
            }
            
            VStack{
                Text("請選擇功能")
                    .foregroundColor(Color(hex: "646364"))
                    .font(.system(size: 18))
                    .offset(x: 0, y: -20)
                    .padding(0)
                //考卷設定
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(hex: "FFFFF"))
                        .frame(width: 330, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 140, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(hex: "ACACAC"))
                        .offset(x: -95, y: 0)
                    
                    HStack{
                        Image("Addexam")
                            .resizable()
                            .frame(width: 100, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(x: -20, y: 0)
                        
                        VStack{
                            Text("新增考卷")
                                .foregroundColor(Color(hex: "29525B"))
                                .offset(x: 5, y: -15)
                            Text("Adding Exam")
                                .foregroundColor(Color(hex: "5F9EAC"))
                                .offset(x: 15, y: -13)
                        }
                        .offset(x: -20, y: 10)
                    }
                }.padding(10)
                //批改考卷
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(hex: "FFFFF"))
                        .frame(width: 330, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 140, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(hex: "FFA6B0"))
                        .offset(x: -95, y: 0)
                        
                    HStack{
                        Image("Check")
                            .resizable()
                            .frame(width: 100, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(x: -10, y: 0)
                        
                        VStack{
                            Text("批改考卷")
                                .foregroundColor(Color(hex: "29525B"))
                                .offset(x: 5, y: -15)
                            Text("Correcting Exam")
                                .foregroundColor(Color(hex: "5F9EAC"))
                                .offset(x: 30, y: -13)
                        }
                        .offset(x: -20, y: 10)
                    }
                    
                }.padding(10)
                
                //查看成績
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(hex: "FFFFF"))
                        .frame(width: 330, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 140, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(hex: "C0EEF9"))
                        .offset(x: -95, y: 0)
                    
                    HStack{
                        Image("Gradeline")
                            .resizable()
                            .frame(width: 120, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset(x: -20, y: 0)
                        
                        VStack{
                            Text("查看成績")
                                .foregroundColor(Color(hex: "29525B"))
                                .offset(x: -4, y: -15)
                            Text("Checking Grade")
                                .foregroundColor(Color(hex: "5F9EAC"))
                                .offset(x: 20, y: -13)
                        }
                        .offset(x: -20, y: 10)
                    }
                }.padding(10)
            }.offset(x: 0, y: 20)  //三個選擇匡
        }
    }
}

struct ManageTest_Previews: PreviewProvider {
    static var previews: some View {
        ManageTest()
    }
}
