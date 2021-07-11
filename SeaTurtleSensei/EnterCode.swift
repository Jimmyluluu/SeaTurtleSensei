//
//  EnterCode.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/10.
//

import SwiftUI

struct EnterCode: View {
    var body: some View {
        ZStack{
            Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
            Text("WELCOME! LET'S SIGN UP!!!")
                .foregroundColor(Color(hex: "1A90AA"))
        }
    }
}

struct EnterCode_Previews: PreviewProvider {
    static var previews: some View {
        EnterCode()
    }
}
