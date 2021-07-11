//
//  SetupExam.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/11.
//

import SwiftUI

struct CheckGrade: View {
    var body: some View {
        ZStack{
            Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
            Text("WELCOME! LET'S CHECK GRADE!!!")
                .foregroundColor(Color(hex: "1A90AA"))
        }
    }
}

struct CheckGrade_Previews: PreviewProvider {
    static var previews: some View {
        CheckGrade()
    }
}
