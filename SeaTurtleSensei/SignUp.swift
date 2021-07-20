//
//  SignUp.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/11.
//

import SwiftUI

struct SignUp: View {
    var body: some View {
        ZStack{
            Color(hex:"1A90AA").edgesIgnoringSafeArea(.all)
            Text("WELCOME! LET'S SIGN UP!!!")
                .foregroundColor(Color(hex: "FFFFF"))
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
