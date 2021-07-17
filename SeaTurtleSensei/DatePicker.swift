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
                .foregroundColor(.white)
                .frame(width: 150, height: 100)
                .offset(x: -60, y: -230)
            Image("LittleLogo")
                .offset(x: 100, y: -250)
            
            
            Text("新增行事曆")
                .foregroundColor(Color(hue: 0.513, saturation: 0.952, brightness: 0.834))
                .offset(x: 0, y: -160)
                .frame(width: 300, height: 400)
                .background(Color.white)
                .cornerRadius(30)
            Path{path in
                    path.move(to: CGPoint(x:20, y:30))
                    path.addLine(to: CGPoint(x:260, y:30))
                }
                    .offset(x: 20, y: 110)
                    .stroke(Color(hue: 0.513, saturation: 0.952, brightness: 0.834), lineWidth:3)
                    
            
            
            
        }
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePicker()
    }
}

