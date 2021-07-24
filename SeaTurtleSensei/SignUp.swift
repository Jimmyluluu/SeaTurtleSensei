//
//  SignUp.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/11.
//

import SwiftUI

struct SignUp: View {
    
    @EnvironmentObject var AccountPassword:Account2
    
    @State private var teachername = ""  //姓名
    
    @State private var gentle = ""  //性別
    
    @State private var mobile = ""  //手機號碼
    
    @State private var email = ""  //郵件
    
    @State private var pwd = ""  //密碼
    
    @State private var conpwd = ""  //確認密碼
    
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        ZStack{
            Color(hex:"1A90AA").edgesIgnoringSafeArea(.all)
            VStack{
                Text("Sea Turtle Sensei")
                    .font(.system(size: 20))
                    .foregroundColor(Color(hex: "FFFFF"))
                    .offset(x: 0, y: 50)
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color(hex: "FFFFF"))
                        .frame(width: 390, height: 800)
                        .opacity(0.5)
                        .offset(x: 0, y: 50)
                    Rectangle()
                        .fill(Color(hex: "FFFFF"))
                        .frame(width: 390, height: 740)
                        .offset(x: 0, y: 50)
                    
                    VStack{
                        Text("註冊 Sign Up")
                            .bold()
                            .foregroundColor(Color(hex: "1A90AA"))
                            .font(.system(size: 20))
                            .offset(x: 0, y: -10)
                        
                        TextField("Name", text: $teachername)
                            .foregroundColor(Color(hex: "1A90AA"))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                            )
                            .autocapitalization(.none)
                            .frame(width: 310, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()

                        
                        TextField("Gentle", text: $gentle)
                            .foregroundColor(Color(hex: "1A90AA"))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                            )
                            .autocapitalization(.none)
                            .frame(width: 310, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        TextField("Mobile", text: $mobile)
                            .foregroundColor(Color(hex: "1A90AA"))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                            )
                            .autocapitalization(.none)
                            .frame(width: 310, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        TextField("Email", text: $email)
                            .foregroundColor(Color(hex: "1A90AA"))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                            )
                            .autocapitalization(.none)
                            .frame(width: 310, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        TextField("Password", text: $pwd)
                            .foregroundColor(Color(hex: "1A90AA"))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                            )
                            .autocapitalization(.none)
                            .frame(width: 310, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
                        
                        TextField("Confirm password", text: $conpwd)
                            .foregroundColor(Color(hex: "1A90AA"))
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                            )
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                            )
                            .autocapitalization(.none)
                            .frame(width: 310, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding()
                        Button(action:{
                            self.presentationMode.wrappedValue.dismiss()
                            AccountPassword.addName(NewName: self.teachername, NewGentle: self.gentle, NewMobile: self.mobile, NewEmail: self.email, NewPassword: self.pwd)
                        }){
                            Text("註冊")
                                .frame(width: 140, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius:30).foregroundColor(Color(hex: "FB769E")))
                                .offset(x: 0, y: 10)
                        }
                        
                        HStack{
                            Text("Already have account, ")
                                .foregroundColor(Color(hex: "9F9F9F"))
                            Button(action:{
                                self.presentationMode.wrappedValue.dismiss()}){
                                Text("Login Here!")
                                    .fontWeight(.medium)
                                    .foregroundColor(Color(hex: "07A9B4"))
                            }
                        }.offset(x: 0, y: 30)  //底下的already account
                    }.offset(x: 0, y: -20)  //輸入欄
                }
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
