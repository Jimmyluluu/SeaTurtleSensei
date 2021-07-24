//
//  TestList.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/24.
//

import SwiftUI

struct UnMarkTest :Identifiable {
    let id = UUID()
    var name: String
    let Number: String
    //var Choice: String
}

struct TestListRow: View {
    
    @State var StudentPaper: UnMarkTest
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(StudentPaper.name)
                    Text(StudentPaper.Number).offset(x: 200, y: 0)
                    Text("分").offset(x: 190, y: 0)
                }
            }
        }
        Spacer()
    }
}


class UnMarkTest2: ObservableObject {
    @Published var Name = [UnMarkTest(name: "王大閎", Number: "20")]
    func addName(NewName:String, NewNumber:String) {
        Name.append(UnMarkTest(name: NewName, Number: NewNumber))
        
    }
}

struct TestList: View {
    
    @State var ShowingPopover = false
    
    @State var each = false
    
    @EnvironmentObject var StudentQuestion :UnMarkTest2
    
    var body: some View {
        ZStack{
            VStack{
                Text("考卷清單")
                    .frame(width: 140, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hex: "028294"))
                    .background(RoundedRectangle(cornerRadius:30)
                    .foregroundColor(Color(hex: "FFE1EA")))
                
                List() {
                    ForEach(StudentQuestion.Name) {name in
                        NavigationLink(
                            destination: ManageTest()){
                            TestListRow(StudentPaper: name)
                        }.background(Color(hex: "DEF9FF"))
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
struct TestList_Previews: PreviewProvider {
    static var previews: some View {
        TestList().environmentObject(UnMarkTest2())
    }
}
