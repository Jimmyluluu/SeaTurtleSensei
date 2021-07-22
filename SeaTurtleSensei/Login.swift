//
//  Login.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/10.
//

import SwiftUI

struct Login: View {
    
    //帳號
    @State private var email = ""
    
    //密碼
    @State private var pwd = ""
    
    //確認正確失敗
    @State var TrueFalse: Bool = false
    @State var attemptingLogin: Bool  = true
    
    //測試用帳號密碼
    let testEmail = "test"
    let testPasswer = "123456"
    
    var body: some View {
        ZStack{
            Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
            Group{
                Circle()
                    .fill(Color(hex: "097294"))
                    .frame(width: 250, height: 250)
                    .offset(x: 180, y: -190)
            }
            Group{
                Circle()
                    .fill(Color(hex: "07A9B4").opacity(0.6))
                    .frame(width: 250, height: 250)
                    .offset(x: 130, y: -220)
            }
            Image("Turtle2")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .offset(x: 80, y: -160)
            
            VStack{
                Image("Word").resizable()
                    .offset(x: -35, y: 60)
                    .frame(width: 231.79, height: 108.5)
                    .scaledToFit()
                    .padding(0)
                VStack{
                    
                    //輸入帳號
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
                    
                    //輸入密碼
                    SecureField("Password", text: $pwd)
                        .foregroundColor(Color(hex: "1A90AA"))
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "1A90AA"), lineWidth: 1)
                        )
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                        )
                        .frame(width: 310, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(10)
                }.offset(x: 0, y: 55)
                
                if attemptingLogin == false {
                    Text("帳號密碼錯誤")
                        .foregroundColor(.red).offset(y:60)
                }
                
                
                VStack{
                    NavigationLink(
                        destination: Home(),isActive : $TrueFalse) {
                        Button(action: {
                            attemptingLogin = true
                            if self.email == testEmail && self.pwd == testPasswer {
                                self.TrueFalse = true
                            }
                            else {
                                self.attemptingLogin = false
                            }
                        }, label: {
                            Text("Login")
                                .frame(width: 140, height: 40, alignment: .center)
                                .foregroundColor(.white)
                                .background(RoundedRectangle(cornerRadius:30)
                                                .foregroundColor(Color(hex: "07A9B4")))
                        })
                            
                        }.offset(x: 0, y: 65).padding(5)
                        
                 
                    
                    NavigationLink(
                         destination: SignUp()){
                            Text("Sign up")
                            .frame(width: 140, height: 40, alignment: .center)
                            .foregroundColor(Color(hex: "07A9B4"))
                            .overlay(RoundedRectangle(cornerRadius: 30)
                            .stroke(Color(hex: "07A9B4"), lineWidth: 2)
                            )
                    }.offset(x: 0, y: 75)
                }
            }.padding(5)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
