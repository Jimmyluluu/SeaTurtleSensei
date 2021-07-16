//
//  Step2.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/6.
//

import SwiftUI

struct EnterCode: View {
    
    //輸入考卷代碼
    @State private var entercode = ""
    
    var body: some View {
        ZStack{
            Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
            VStack{
                Image("Top").resizable().frame(width: 400, height: 200).edgesIgnoringSafeArea(.top)
                ZStack {
                    Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
                    VStack{
                        Image("Turtle2")
                            .offset(x: 100, y: -230)
                            .padding(0)
                        Text("輸入考卷代碼進行測驗")
                            .foregroundColor(Color(hex: "1A90AA"))
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .offset(x: 0, y: -380)
                        TextField("EnterCode", text: $entercode)
                            .foregroundColor(Color(hex: "1A90AA"))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                            )
                            .autocapitalization(.none)
                            .frame(width: 280, height: 40, alignment: .center)
                            .padding(0)
                            .offset(x: 0, y: -350)
                        
                        NavigationLink(
                            destination: BeginTest()){
                            Text("ENTER")
                                .frame(width: 120, height: 40, alignment: .center)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius:20).foregroundColor(Color(hex: "FB93B2")))
                        }.offset(x: 0, y: -280)
                    }
                }
            }
        }
    }
}

struct EnterCode_Previews: PreviewProvider {
    static var previews: some View {
        EnterCode()
    }
}

