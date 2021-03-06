//
//  DatePicker.swift
//  SeaTurtleSensei
//
//  Created by 林哲瑋 on 2021/7/18.
//

import SwiftUI


struct SetTest: View {
    
    @EnvironmentObject var Paper :TestName2
    //新增考卷名稱
    @State var testname = ""
    //新增考卷總分
    @State  var total = ""
    
    @StateObject var AddData = TestName2()
    
    @EnvironmentObject var PaperName:TestName2
    
    @Environment(\.presentationMode) private var presentationMode


    var body: some View {
        ZStack {
            Color(hex:"1A90AA").edgesIgnoringSafeArea(.all)
            Image("wave")
                .offset(x: -10, y: 330)
            
            Text("Sea Turtle Sensei")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .offset(x: 0, y: -350)
            
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(hex: "FFFFF"))
                    .frame(width: 350, height: 505)
                    .opacity(0.5)
                    .shadow(color: .gray, radius: 2, x: 3, y: 3)
                
                Text("新增考試卷")
                    .foregroundColor(Color(hex: "1A90AA"))
                    .offset(x: 0, y: -190)
                    .font(.system(size: 20))
                    .frame(width: 350, height: 450)
                    .background(Color.white)
            
                Path{path in
                        path.move(to: CGPoint(x:80, y:30))
                        path.addLine(to: CGPoint(x:290, y:30))
                    }
                        .offset(x: 20, y: 185)
                        .stroke(Color(hex: "1A90AA"), lineWidth:2)
                VStack{
                    TextField("輸入測驗名稱", text: $testname)
                        .foregroundColor(Color(hex: "1A90AA"))
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                        )
                        .autocapitalization(.none)
                        .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    TextField("輸入測驗總分", text: $total)
                        .foregroundColor(Color(hex: "1A90AA"))
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                        )
                        .frame(width: 250, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                }.offset(x: 0, y: -20)
                
                Button(action:{
                    //self.add()
                    print(AddData.Name)
                    PaperName.addName(NewName: self.testname, NewNumber: self.total)
                    self.presentationMode.wrappedValue.dismiss()
                    
                }){
                    Text("FINISH")
                        .frame(width: 120, height: 40, alignment: .center)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
                }.offset(x: 0, y: 150).padding(5)
            }.offset(x: 0, y: -40)
        }
    }
    
    func add() {
        AddData.Name.append(TestName(name: self.testname, Number: self.total))
        Paper.Name.append(TestName(name: self.testname, Number: self.total))
        print("AA")
        print(AddData.Name)
    }
}

struct SetTest_Previews: PreviewProvider {
    static var previews: some View {
        SetTest()
    }
}


