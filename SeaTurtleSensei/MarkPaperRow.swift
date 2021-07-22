//
//  MarkPaperRow.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/20.
//

import Foundation
import SwiftUI
import Combine

//
struct Paper: Codable {
    
}

//考卷名稱
struct TestName :Identifiable {
    let id = UUID()
    var name: String
    let Number: Int
}

func Connect() {
    guard let url = URL(string: "http://192.168.50.178:3000")
    else {
        print("Invalid URL")
        return
    }
    
    let request = URLRequest(url: url)
    
    let dataTask = URLSession.shared.dataTask(with: request) {
        data,respone, error in
    }

    dataTask.resume()
}


struct MarkPaperRow: View {
    
    @State var Test: TestName
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(Test.name).background(Color(hex: "DEF9FF"))
            }
        }
        Spacer()
    }
}
