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
                    destination: Account()){ //點選頭像編輯帳號
                    Image("LittleLogo").resizable().background(Color(hex: "097294")).clipShape(Circle()).frame(width: 60, height: 60)
                }.offset(x: 145, y: -40)
                
                //灰色條選單
                ScrollView(.horizontal) {
                    HStack(alignment: .center, spacing: 10) {
                        NavigationLink(
                            destination: Schedule()){
                            Text("行事曆")
                                .frame(width: 120, height: 40, alignment: .center)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius:30).foregroundColor(Color(hex: "B9D3DA")))
                        }
                        NavigationLink(
                            destination: SetupExam()){
                            Text("設定考卷")
                                .frame(width: 120, height: 35, alignment: .center)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius:30).foregroundColor(Color(hex: "B9D3DA")))
                        }
                        NavigationLink(
                            destination: CorrectPaper()){
                            Text("批改考卷")
                                .frame(width: 120, height: 35, alignment: .center)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius:30).foregroundColor(Color(hex: "B9D3DA")))
                        }
                        NavigationLink(
                            destination: CorrectPaper()){
                            Text("成績管理")
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
                        //設定考卷
                        ZStack{
                            NavigationLink(
                                destination: SetupExam()){
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(hex: "3DBAD6"))
                                    .frame(width: 350, height: 145, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(5)
                            }
                            Text("設定考卷")
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
                                destination: Schedule()){
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(hex: "AFECFA"))
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
                        //批改考卷
                        ZStack{
                            NavigationLink(
                                destination: CorrectPaper()){
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(hex: "3DBAD6"))
                                    .frame(width: 350, height: 145, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(5)
                            }
                            Text("批改考卷")
                                .fontWeight(.medium)
                                .foregroundColor(Color(hex: "025A6D"))
                                .font(.system(size: 20))
                                .offset(x: -100, y: -40)
                            Circle()
                                .foregroundColor(Color(hex: "FFFFF"))
                                .frame(width: 110, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .offset(x: 70, y: 0)
                            Image("Correctpaper")
                                .offset(x: 50, y: 0)
                        }
                        //成績管理
                        ZStack{
                            NavigationLink(
                                destination: CheckGrade()){
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(hex: "AFECFA"))
                                    .frame(width: 350, height: 145, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(5)
                            }
                            Text("成績管理")
                                .fontWeight(.medium)
                                .foregroundColor(Color(hex: "025A6D"))
                                .font(.system(size: 20))
                                .offset(x: -100, y: -40)
                            Circle()
                                .foregroundColor(Color(hex: "FFFFF"))
                                .frame(width: 110, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                .offset(x: 100, y: 0)
                            Image("Grade")
                                .offset(x: 50, y: 0)
                        }
                        //帳號管理
                        ZStack{
                            NavigationLink(
                                destination: Account()){
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .fill(Color(hex: "3DBAD6"))
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
