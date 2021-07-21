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
                //考卷設定
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(hex: "FFFFF"))
                        .frame(width: 350, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                        .padding(10)
                    Text("新增考卷")
                }
                //批改考卷
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(hex: "FFFFF"))
                        .frame(width: 350, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                        .padding(10)
                    Text("批改考卷")
                }
                
                //查看成績
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(hex: "FFFFF"))
                        .frame(width: 350, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .shadow(color: .gray, radius: 2, x: 1, y: 1)
                        .padding(10)
                    Text("查看成績")
                }
            }.offset(x: 0, y: 20)  //三個選擇匡
        }
    }
}

struct ManageTest_Previews: PreviewProvider {
    static var previews: some View {
        ManageTest()
    }
}
