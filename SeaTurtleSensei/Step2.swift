//
//  Step2.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/6.
//

import SwiftUI

struct Step2: View {
    var body: some View {
        ZStack{
            Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
            VStack{
                Image("Top").resizable().frame(width: 400, height: 200).edgesIgnoringSafeArea(.top)
                ZStack {
                    Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
                    Text("請選擇你的身份")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .foregroundColor(Color(hex: "1A90AA"))
                        .offset(x: 0, y: -300)
                        
                    HStack {
                        NavigationLink(
                            destination:EnterCode(),
                            label: {
                                Image("Student")
                            })
                        NavigationLink(
                            destination: Login(),
                            label: {
                                Image("Teacher")
                            })
                    }.offset(x: 0, y: -150)
                }
            }
        }
    }
}

struct Step2_Previews: PreviewProvider {
    static var previews: some View {
        Step2()
    }
}
