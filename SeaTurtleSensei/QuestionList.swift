//
//  QuestionList.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/21.
//

import SwiftUI

struct QuestionList: View {
    var Test: TestName
    
    var body: some View {
        VStack {
            Text(Test.name).font(.title)
            Spacer()
        }
    }
}
