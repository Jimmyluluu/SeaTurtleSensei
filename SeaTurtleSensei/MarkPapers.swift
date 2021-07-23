//
//  MarkPapers.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/20.
//
import Foundation
import SwiftUI
import UIKit

class TestName2: ObservableObject {
    @Published var Name = [TestName(name: "系統程式第一次小考", Number: "100"), TestName(name: "系統程式第二次小考", Number: "100")]
    
}

struct MarkPapers: View {
    
    
    @State var ShowingPopover = false
    @StateObject var Test: TestName2
    

    var body: some View {
        
        
        ZStack{
            VStack{
                Text("考卷清單")
                    .frame(width: 140, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hex: "028294"))
                    .background(RoundedRectangle(cornerRadius:30)
                    .foregroundColor(Color(hex: "FFE1EA")))
                
                List() {
                    ForEach(Test.Name) {name in
                        NavigationLink(
                            destination: QuestionList(Test: name)){
                            MarkPaperRow(Test: name)
                        }.background(Color(hex: "DEF9FF"))
                    }.listStyle(InsetGroupedListStyle())
                }
                Button(action: {
                        ShowingPopover = true
                    
                }){
                    Text("ADD")
                        .frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
                }.popover(isPresented: $ShowingPopover, content: {
                    SetTest()
                })
                  
            }
        }
    }
    func pri() {
        print("BB")
        print(Test.Name)
    }
}


struct MarkPapers_Previews: PreviewProvider {
    static var previews: some View {
        MarkPapers(Test: TestName2())
    }
}
