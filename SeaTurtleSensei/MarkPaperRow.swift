//
//  MarkPaperRow.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/20.
//

import Foundation
import SwiftUI
import CoreLocation

struct TestName :Identifiable {
    let id = UUID()
    var name: String
}

struct MarkPaperRow: View {
    
    var Test: TestName
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(Test.name).background(Color(hex: "DEF9FF"))
            }
        }
        Spacer()
    }
    
}
