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
    
    
    @State var selection: Set<UUID> = []
    //@State var item: [Item] = []
    @State var TestTitle : [TestName] = []
    var Name = ["3/31系統程式第一次小考","4/17系統程式第二次小考"]
    
    var body: some View {
        
        ZStack{
            Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
            List {
                Text("123")
            }
        }
    }
}

struct MarkPapers_Previews: PreviewProvider {
    static var previews: some View {
        MarkPapers()
    }
}
