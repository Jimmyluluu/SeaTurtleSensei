//
//  DatePicker.swift
//  SeaTurtleSensei
//
//  Created by 林哲瑋 on 2021/7/17.
//

import SwiftUI

struct DatePicker: View {
    @State private var item = ""
    @State private var date = ""
    var body: some View {
        ZStack {
            Color(hex:"1A90AA").edgesIgnoringSafeArea(.all)
            Image("wave")
                .offset(x: -10, y: 330)
            
            Text("Sea Turtle Sensei")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .offset(x: 0, y: -350)
            
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(hex: "FFFFF"))
                    .frame(width: 330, height: 400)
                    .opacity(0.5)
                    .shadow(color: .gray, radius: 2, x: 3, y: 3)
                
                Text("新增行事曆")
                    .foregroundColor(Color(hex: "1A90AA"))
                    .offset(x: 0, y: -150)
                    .font(.system(size: 20))
                    .frame(width: 330, height: 350)
                    .background(Color.white)
            
                Path{path in
                        path.move(to: CGPoint(x:80, y:30))
                        path.addLine(to: CGPoint(x:290, y:30))
                    }
                        .offset(x: 20, y: 225)
                        .stroke(Color(hex: "1A90AA"), lineWidth:2)
                VStack{
                    TextField("輸入測驗名稱", text: $item)
                        .foregroundColor(Color(hex: "1A90AA"))
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                        )
                        .autocapitalization(.none)
                        .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    TextField("輸入測驗日期", text: $date)
                        .foregroundColor(Color(hex: "1A90AA"))
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                        )
                        .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                }.offset(x: 0, y: -20)
                
                NavigationLink(
                    destination: Home()){
                        Text("FINISH")
                            .frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
                    }
                    .offset(x: 0, y: 110)
                    .padding(5)
            }.offset(x: 0, y: -40)
        }
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker()
    }
}

