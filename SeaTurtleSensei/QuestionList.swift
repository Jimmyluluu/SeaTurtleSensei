//
//  QuestionList.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/24.
//

import SwiftUI

struct QuestionName :Identifiable {
    let id = UUID()
    var name: String
    let Number: String
    //var Choice: String
}

struct QuestionRow: View {
    
    @State var Question: QuestionName
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(Question.name).background(Color(hex: "DEF9FF"))
            }
        }
        Spacer()
    }
}


class QuestionName2: ObservableObject {
    @Published var Name = [QuestionName]()
    func addName(NewName:String, NewNumber:String) {
        Name.append(QuestionName(name: NewName, Number: NewNumber))
        
    }
}

struct QuestionList: View {
    
    @State var ShowingPopover = false
    
    @State var each = false
    
    @EnvironmentObject var Question :QuestionName2
    
    var body: some View {
        ZStack{
            VStack{
                Text("題目清單")
                    .frame(width: 140, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hex: "028294"))
                    .background(RoundedRectangle(cornerRadius:30)
                    .foregroundColor(Color(hex: "FFE1EA")))
                
                List() {
                    ForEach(Question.Name) {name in
                            QuestionRow(Question: name)
                        .background(Color(hex: "DEF9FF"))
                    }.listStyle(InsetGroupedListStyle())
                    
                }
                NavigationLink(
                    destination: SetQuestion()){
                        Text("ADD")
                            .frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
                    }
                    
            }
        }
    }
}

struct QuestionList_Previews: PreviewProvider {
    static var previews: some View {
        QuestionList().environmentObject(QuestionName2())
    }
}
