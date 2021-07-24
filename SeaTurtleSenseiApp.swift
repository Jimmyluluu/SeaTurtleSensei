//
//  SeaTurtleSenseiApp.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/2.
//

import SwiftUI

@main
struct SeaTurtleSenseiApp: App {
    @StateObject var Question = QuestionName2()
    @StateObject var PaperName = TestName2()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(PaperName).environmentObject(Question)
        }
    }
}
