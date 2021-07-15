//
//  SetupExam.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/15.
//

import SwiftUI

struct BeginTest: View {
    @State private var testname = ""
    @State private var testcode = ""
    @State private var school = ""
    @State private var yourclass = ""
    @State private var name = ""
    @State private var number = ""
    var body: some View {
        ZStack{
            Color(hex:"056074").edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color(hex: "FFFFF"))
                .frame(width: 360, height: 700)
                .opacity(0.5)
            Rectangle()
                .fill(Color(hex: "FFFFF"))
                .frame(width: 360, height: 640)
            
            Text("進行測驗")
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "1A90AA"))
                .offset(x: 0, y: -285)
                .font(.system(size: 20))
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(hex: "FFFFF"))
                    .frame(width: 300, height: 110)
                    .overlay(
                         RoundedRectangle(cornerRadius: 8, style: .continuous)
                             .stroke(Color.gray, lineWidth: 1)
                    ).offset(x: 0, y: -205)
                Text("考試名稱＃考試代碼")
                    .fontWeight(.bold)
                    .offset(x: 0, y: -235)
                Text("作答時間：")
                    .offset(x: -80, y: -200)
                Text("出題老師：")
                    .offset(x: -80, y: -175)
            }
            VStack{
                Text("請輸入你的資料")
                    .foregroundColor(Color(hex: "005365"))
                    .offset(x: 0, y: -80)
                
                TextField("輸入學校", text: $school)
                    .foregroundColor(Color(hex: "1A90AA"))
                    .padding(13)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                    )
                    .autocapitalization(.none)
                    .frame(width: 280, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: -60)
                    .padding()
                
                TextField("輸入班級", text: $school)
                    .foregroundColor(Color(hex: "1A90AA"))
                    .padding(13)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                    )
                    .autocapitalization(.none)
                    .frame(width: 280, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: -55)
                    .padding()
                
                TextField("輸入姓名", text: $school)
                    .foregroundColor(Color(hex: "1A90AA"))
                    .padding(13)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                    )
                    .autocapitalization(.none)
                    .frame(width: 280, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: -50)
                    .padding()
                
                TextField("輸入學號", text: $school)
                    .foregroundColor(Color(hex: "1A90AA"))
                    .padding(13)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                    )
                    .autocapitalization(.none)
                    .frame(width: 280, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: -45)
                    .padding()
            }.offset(x: 0, y: 90)
            NavigationLink(
                destination: Test()){
                Text("開始測驗")
                    .frame(width: 140, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius:30).foregroundColor(Color(hex: "07A9B4")))
            }.padding(5)
            .offset(x: 0, y: 230)
        }
    }
}

struct BeginTest_Previews: PreviewProvider {
    static var previews: some View {
        BeginTest()
    }
}
