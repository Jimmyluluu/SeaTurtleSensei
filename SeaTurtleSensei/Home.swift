//
//  Home.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/10.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack{
            Color(hex:"FFFFF").edgesIgnoringSafeArea(.all)
            VStack(alignment: .center,spacing: 10){
                Text("Sea Turtle Sensei")
                    .font(.system(size: 20))
                    .foregroundColor(Color(hex: "1A90AA"))
                    .offset(x: 0, y: 15)
                NavigationLink(
                    destination: AccountSetting()){ //點選頭像編輯帳號
                    Image("LittleLogo").resizable().background(Color(hex: "097294")).clipShape(Circle()).frame(width: 60, height: 60)
                }.offset(x: 145, y: -40)
                
                //灰色條選單
                ScrollView(.horizontal) {
                    HStack(alignment: .center, spacing: 10) {
                        NavigationLink(
                            destination: MarkPapers()){
                            Text("考卷管理")
                                .frame(width: 120, height: 35, alignment: .center)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius:30).foregroundColor(Color(hex: "B9D3DA")))
                        }
                        
                        NavigationLink(
                            destination: DatePicker()){
                            Text("行事曆")
                                .frame(width: 120, height: 35, alignment: .center)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius:30).foregroundColor(Color(hex: "B9D3DA")))
                        }
                        
                        NavigationLink(
                            destination: AccountSetting()){
                            Text("帳號管理")
                                .frame(width: 120, height: 35, alignment: .center)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius:30).foregroundColor(Color(hex: "B9D3DA")))
                        }
                    }
                }.padding(10)
                .offset(x: 0, y: -50)
                
                //下滑式選單
                ScrollView(.vertical) {
                    VStack{
                        
                        //考卷管理
                        ZStack{
                            NavigationLink(
                                destination: MarkPapers()){
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(hex: "0F9FBE"))
                                    .frame(width: 350, height: 145, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(5)
                            }
                            Text("考卷管理")
                                .fontWeight(.bold)
                                .foregroundColor(Color(hex: "025A6D"))
                                .font(.system(size: 20))
                                .offset(x: -100, y: -40)
                            Circle()
                                .foregroundColor(Color(hex: "FFFFF"))
                                .frame(width: 110, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 70, y: 0)
                            Image("Test")
                                .offset(x: 50, y: 0)
                        }
                        
                        
                        
                        //行事曆
                        ZStack{
                            NavigationLink(
                                destination: DatePicker()){
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(hex: "3DBAD6"))
                                    .frame(width: 350, height: 145, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(5)
                            }
                            Text("行事曆")
                                .fontWeight(.bold)
                                .foregroundColor(Color(hex: "025A6D"))
                                .font(.system(size: 20))
                                .offset(x: -110, y: -40)
                            Circle()
                                .foregroundColor(Color(hex: "FFFFF"))
                                .frame(width: 110, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                .offset(x: 40, y: 0)
                            Image("Schdule")
                                .offset(x: 50, y: 0)
                        }
                        
                        //帳號管理
                        ZStack{
                            NavigationLink(
                                destination: AccountSetting()){
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(hex: "AFECFA"))
                                    .frame(width: 350, height: 145, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(5)
                            }
                            Text("帳號管理")
                                .fontWeight(.medium)
                                .foregroundColor(Color(hex: "025A6D"))
                                .font(.system(size: 20))
                                .offset(x: -100, y: -40)
                            Circle()
                                .foregroundColor(Color(hex: "FFFFF"))
                                .frame(width: 110, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 50, y: 0)
                            Image("Count")
                                .offset(x: 60, y: 0)
                        }
                    }
                }.offset(x: 0, y: -55)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
