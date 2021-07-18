//
//  DatePicker.swift
//  SeaTurtleSensei
//
//  Created by 林哲瑋 on 2021/7/17.
//

import SwiftUI

struct DatePicker: View {
    @State private var item = ""
    @State private var time = ""
    var body: some View {
        ZStack {
            Color(hex:"52A8D2").edgesIgnoringSafeArea(.all)
            Text("Sea Turtle Sensei")
                .fontWeight(.bold)
                .font(.system(size: 18))
                .foregroundColor(.white)
                .frame(width: 150, height: 100)
                .offset(x: -60, y: -240)
            Circle()
                .offset(x: 100, y: -248)
                .foregroundColor(Color(hex: "1A469C"))
                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Image("LittleLogo")
                .offset(x: 100, y: -250)
            
            
            Text("新增行事曆")
                .foregroundColor(Color(hue: 0.513, saturation: 0.952, brightness: 0.834))
                .offset(x: 0, y: -160)
                .frame(width: 300, height: 400)
                .background(Color.white)
                .cornerRadius(30)
            Path{path in
                    path.move(to: CGPoint(x:10, y:30))
                    path.addLine(to: CGPoint(x:270, y:30))
                }
                    .offset(x: 20, y: 110)
                    .stroke(Color(hue: 0.513, saturation: 0.952, brightness: 0.834), lineWidth:3)
            VStack{
                TextField("                 輸入事項", text: $item)
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
                
                SecureField("                 輸入時間", text: $time)
                    .foregroundColor(Color(hex: "1A90AA"))
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                    )
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.white)
                    )
                    .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(10)
            }.offset(x: 0, y: -30)
            
            NavigationLink(
                destination: Home()){
                    Text("ENTER")
                        .frame(width: 140, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius:10).foregroundColor(Color(hex: "F3B1C5")))
                }
                .offset(x: 0, y: 120)
            .padding(5)
            
            
        }
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker()
    }
}

