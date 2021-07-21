//
//  SetupExam.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/15.
//

import SwiftUI

struct Test: View {
    var body: some View {
        ScrollView(.vertical){
            VStack{
                ZStack{
                    Color(hex:"FFFFF").edgesIgnoringSafeArea(.all)
                    VStack{
                        Text("考卷名稱")
                            .foregroundColor(Color(hex: "FFFFF"))
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Rectangle().foregroundColor(Color(hex: "07A9B4")))
                            .offset(x: 0, y: 0)
                            .padding(3)
                        
                        Text("ㄧ、X選題（ 一題Ｘ分，共Ｘ題 ）")
                            .padding(3)
                            .offset(x: -50, y: 0)
                        ZStack{
                            Rectangle()
                                .fill(Color(hex: "FFFFF"))
                                .frame(width: 380, height: 667)
                                .overlay(
                                     RoundedRectangle(cornerRadius: 8, style: .continuous)
                                         .stroke(Color.gray, lineWidth: 1)
                                )
                            VStack{
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
