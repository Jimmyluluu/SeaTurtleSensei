//
//  SwiftUIView.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/5.
//

import SwiftUI


struct SwiftUIView: View {
    var body: some View {
       
        
        ZStack{
            Color(hex:"EAF9FF")
        }.edgesIgnoringSafeArea(.all)
        
    }
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SwiftUIView()
        }
    }
}
