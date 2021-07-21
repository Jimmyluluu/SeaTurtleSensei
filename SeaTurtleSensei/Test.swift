//
//  SetupExam.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/15.
//

import SwiftUI

struct Test: View {
    var body: some View {
        ZStack{
            Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
            VStack{
                Text("考卷名稱")
                    .foregroundColor(Color(hex: "FFFFF"))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Rectangle().foregroundColor(Color(hex: "07A9B4")))
                    .offset(x: 0, y: 90)
                    //.padding()
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(hex: "FFFFF"))
                        .frame(width: 400, height: 900, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 0, y: 80)
                    ScrollView(.vertical){
                        VStack{
                            Text("ㄧ、X選題（ 一題Ｘ分，共Ｘ題")
                                .offset(x: 0, y: 90)
                        }
                    }
                }.offset(x: 0, y: /*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
