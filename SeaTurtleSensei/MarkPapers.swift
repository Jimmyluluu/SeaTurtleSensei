//
//  MarkPapers.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/20.
//
import Foundation
import SwiftUI
import UIKit

struct MarkPapers: View {
    
    
    @State var selection: Set<String> = []
    //@State var item: [Item] = []
    @State var TestTitle : [TestName] = []
    var Name = ["3/31系統程式第一次小考","4/17系統程式第二次小考"]
    @State var names = [
        "1",
        "2",
        "3"
    ]
    
    var body: some View {
        
        ZStack{
            VStack{
                Text("考卷清單")
                    .frame(width: 140, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hex: "028294"))
                    .background(RoundedRectangle(cornerRadius:30)
                    .foregroundColor(Color(hex: "FFE1EA")))
                
                List {
                    ForEach(Name, id: \.self) {name in
                        NavigationLink(
                        destination: QuestionList(),
                            label: {
                                Text(name).background(Color(hex: "DEF9FF"))
                            })
                    }
    
                }
            }
        }
    }
}


struct MarkPapers_Previews: PreviewProvider {
    static var previews: some View {
        MarkPapers()
    }
}
