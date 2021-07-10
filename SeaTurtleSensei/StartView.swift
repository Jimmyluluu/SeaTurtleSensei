//
//  SwiftUIView.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/5.
//

import SwiftUI


struct StartView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
                VStack{
                    Image("Logo")
                    
                    
                    NavigationLink(
                        destination: Step2(),
                        label: {
                            Image("Start")
                        })
                    Image("Turtle")
                        .frame(width: 100, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
