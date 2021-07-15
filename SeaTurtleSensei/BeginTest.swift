//
//  SetupExam.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/15.
//

import SwiftUI

struct BeginTest: View {
    var body: some View {
        ZStack{
            Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
            Text("WELCOME! LET'S BeginTest!!!")
                .foregroundColor(Color(hex: "1A90AA"))
        }
    }
}

struct BeginTest_Previews: PreviewProvider {
    static var previews: some View {
        BeginTest()
    }
}
