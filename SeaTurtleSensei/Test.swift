//
//  SetupExam.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/15.
//

import SwiftUI

struct Test: View {
    
    //選項一
    @State private var one = ""

    //選項二
    @State private var two = ""
    
    //選項三
    @State private var three = ""
    
    //選項四
    @State private var four = ""

    //選項五
    @State private var five = ""

    
    var body: some View {
        ScrollView(.vertical){
            VStack{
                ZStack{
                    Color(hex:"FFFFF").edgesIgnoringSafeArea(.all)
                    VStack{
                        Text("考卷名稱")
                            .foregroundColor(Color(hex: "FFFFF"))
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Rectangle().foregroundColor(Color(hex: "07A9B4")))
                            .offset(x: 0, y: 0)
                            .padding(3)
                        
                        Text("ㄧ、X選題（ 一題Ｘ分，共Ｘ題 ）")
                            .padding(3)
                            .offset(x: -50, y: 0)
                        ZStack{
                            //題vstack
                            VStack{
                                //題一
                                HStack{
                                    Group{
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: 5, y: 0)
                                            
                                            Text("1.")
                                                .foregroundColor(.black)
                                                .offset(x: -25, y: -50)
                                            
                                            TextField("答", text: $one)
                                                .foregroundColor(Color(hex: "1A90AA"))
                                                .padding()
                                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                                                )
                                                .background(
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .foregroundColor(.white)
                                                )
                                                .autocapitalization(.none)
                                                .frame(width: 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .padding()
                                        }
                                        
                                        ZStack{  //題目選項
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 280, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: -5, y: 0)
                                            VStack{
                                                Text("下列文句「」中的詞語，何者使用最恰當？")
                                                    .frame(width: 260, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -5, y: 75)
                                                
                                                Text("(A)既然每個人選都很優秀，不如「兩害相權取其輕」")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -15, y: 5)
                                                
                                                Text("(B)窮困之際竟幸運中了頭獎，真是有如「雨後春筍」")
                                                        .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                        .offset(x: -5, y: -65)
                                                
                                                Text("(C)他把這些事混為一談，其實根本是「風馬牛不相及」")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -5, y: -135)
                                                
                                                Text("(D)比賽中就算占上風也要保持謹慎，以免「轉悲為喜」")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -13, y: -205)
                                                
                                            }.offset(x: 0, y: 60)  //題目選項vstack
                                        }
                                    }
                                }.offset(x: 0, y: -200)
                                .padding(0)  //題一hstack
                                
                                //題二
                                HStack{
                                    Group{
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: 5, y: 0)
                                            
                                            Text("2.")
                                                .foregroundColor(.black)
                                                .offset(x: -25, y: -50)
                                            
                                            TextField("答", text: $one)
                                                .foregroundColor(Color(hex: "1A90AA"))
                                                .padding()
                                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                                                )
                                                .background(
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .foregroundColor(.white)
                                                )
                                                .autocapitalization(.none)
                                                .frame(width: 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .padding()
                                        }
                                        
                                        ZStack{  //題目選項
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 280, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: -5, y: 0)
                                            VStack{
                                                Text("下列文句，何者詞語使用最恰當？")
                                                    .frame(width: 260, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -5, y: 65)
                                                
                                                Text("(A)他為人謙和有禮，總是前倨後恭")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -5, y: -30)
                                                
                                                Text("(B)曾幾何時，家鄉景物已完全改變")
                                                        .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                        .offset(x: -5, y: -125)
                                                
                                                Text("(C)他一進車廂，就先入為主搶了靠窗座位")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -5, y: -210)
                                                
                                                Text("(D)體育課後教室變得汗牛充棟，又臭又悶")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -5, y: -285)
                                                
                                            }.offset(x: 0, y: 60)  //題目選項vstack
                                        }
                                    }
                                }.offset(x: 0, y: -540)  //題二hstack
                                
                                //題三
                                HStack{
                                    Group{
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 100, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: 5, y: 0)
                                            
                                            Text("3.")
                                                .foregroundColor(.black)
                                                .offset(x: -25, y: -50)
                                            
                                            TextField("答", text: $one)
                                                .foregroundColor(Color(hex: "1A90AA"))
                                                .padding()
                                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                                                )
                                                .background(
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .foregroundColor(.white)
                                                )
                                                .autocapitalization(.none)
                                                .frame(width: 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .padding()
                                        }
                                        
                                        ZStack{  //題目選項
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 280, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: -5, y: 0)
                                            VStack{
                                                Text("下列詞語「」中的注音寫成國字後，何者兩兩相同？")
                                                    .frame(width: 260, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -10, y: 75)
                                                
                                                Text("(A)無「ㄨㄤˋ」之災／自大狂「ㄨㄤˋ」")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -5, y: 5)
                                                
                                                Text("(B)信筆「ㄊㄨˊ」鴉／如火如「ㄊㄨˊ」")
                                                        .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                        .offset(x: -5, y: -65)
                                                
                                                Text("(C)勞而無「ㄍㄨㄥ」／分「ㄍㄨㄥ」合作")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -10, y: -135)
                                                
                                                Text("(D)遺珠之「ㄏㄢˋ」／震「ㄏㄢˋ」人心")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: 0, y: -205)
                                                
                                            }.offset(x: 0, y: 60)  //題目選項vstack
                                        }
                                    }
                                }.offset(x: 0, y: -878)  //題三hstack
                                
                                //題四
                                HStack{
                                    Group{
                                        ZStack{  //答
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: 5, y: 0)
                                            
                                            Text("4.")
                                                .foregroundColor(.black)
                                                .offset(x: -25, y: -50)
                                            
                                            TextField("答", text: $one)
                                                .foregroundColor(Color(hex: "1A90AA"))
                                                .padding()
                                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                                                )
                                                .background(
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .foregroundColor(.white)
                                                )
                                                .autocapitalization(.none)
                                                .frame(width: 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .padding()
                                        }
                                        
                                        ZStack{  //題目選項
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 280, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: -5, y: 0)
                                            VStack{
                                                Text(" 「讀書若是□□□□，便把活潑的讀書心性束縛了。窮研細究，把通篇文章分析得支離破碎，結果往往化甘旨為嚼蠟，脫離了意境，『甚解』卻變成撿了芝麻丟西瓜，因小失大。」根據文意脈絡，空格處填入下列何者最恰當？")
                                                    .frame(width: 260, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -5, y: 105)
                                                
                                                Text("(A)茫然不解")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -90, y: 55)
                                                
                                                Text("(B)一知半解")
                                                        .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                        .offset(x: -90, y: -40)
                                                
                                                Text("(C)不求甚解")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -90, y: -135)
                                                
                                                Text("(D)逐字求解")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -90, y: -230)
                                                
                                            }.offset(x: 0, y: 60)  //題目選項vstack
                                        }
                                        
                                    }
                                }.offset(x: 0, y: -1216)  //題四hstack
                                
                                //題五
                                HStack{
                                    Group{
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: 5, y: 0)
                                            
                                            Text("5.")
                                                .foregroundColor(.black)
                                                .offset(x: -25, y: -50)
                                            
                                            TextField("答", text: $one)
                                                .foregroundColor(Color(hex: "1A90AA"))
                                                .padding()
                                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                                                )
                                                .background(
                                                    RoundedRectangle(cornerRadius: 10)
                                                        .foregroundColor(.white)
                                                )
                                                .autocapitalization(.none)
                                                .frame(width: 50, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .padding()
                                        }
                                        
                                        ZStack{  //題目選項
                                            Rectangle()
                                                .foregroundColor(.white)
                                                .frame(width: 280, height: 270, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .overlay(
                                                     Rectangle()
                                                         .stroke(Color.gray, lineWidth: 1)
                                                )
                                                .offset(x: -5, y: 0)
                                            VStack{
                                                Text("王國維評姜白石詞：「古今詞人格調之高，無如白石。惜不於意境上用力，故覺無言外之味、弦外之響。終不能與於第一流之作者也。」下列何者最符合這段文字的觀點？")
                                                    .frame(width: 260, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -5, y: 105)
                                                
                                                Text("(A)白石非第一流之作者")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -45, y: 55)
                                                
                                                Text("(B)白石之詞善於經營意境")
                                                        .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                        .offset(x: -36, y: -40)
                                                
                                                Text("(C)有弦外之響者必是第一流詞作")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: -10, y: -135)
                                                
                                                Text("(D)詞有言外之意方顯作者格調之高")
                                                    .frame(width: 270, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                    .offset(x: 0, y: -230)
                                                
                                            }.offset(x: 0, y: 60)  //題目選項vstack
                                        }
                                    }
                                }.offset(x: 0, y: -1554)  //題五hstack
                                
                            }  //題目vstack
                        }
                    }
                }
            }
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
