//
//  SeaTurtleSenseiApp.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/2.
//

import SwiftUI

@main
struct SeaTurtleSenseiApp: App {
    
    //帳號密碼
    @StateObject var AccountPassword = Account2()
    
    //新增問題
    @StateObject var Question = QuestionName2()
    
    //新增考試
    @StateObject var PaperName = TestName2()
    
    //新增尚未改的考卷
    @StateObject var StudentQuestion = UnMarkTest2()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(PaperName)
                .environmentObject(Question)
                .environmentObject(StudentQuestion)
                .environmentObject(AccountPassword)
        }
    }
}
