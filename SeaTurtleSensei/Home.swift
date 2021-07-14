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
            VStack{
                NavigationLink(
                    destination: Account()){ //點選頭像編輯帳號
                    Group{
                        Circle()
                            .fill(Color(hex: "097294"))
                            .frame(width: 50, height: 55)
                    }.offset(x: 60, y: 0)
                }.offset(x: 60, y: -310)
                ScrollView(.horizontal) {
                    HStack {
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
                .offset(x: 0, y: -320.0)
                .padding()
            }
        }
    }
        
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
