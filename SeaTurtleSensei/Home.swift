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
                    .offset(x: 0, y: -265)
                
                NavigationLink(
                    destination: Account()){ //點選頭像編輯帳號
                    Image("LittleLogo").resizable().background(Color(hex: "097294")).clipShape(Circle()).frame(width: 60, height: 60)
                }.offset(x: 145, y: -320)
                
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
                }
                .padding()
                .offset(x: 0, y: -335)
            }
        }
    }
        
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
