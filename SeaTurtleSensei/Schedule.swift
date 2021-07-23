//
//  SetupExam.swift
//  SeaTurtleSensei
//
//  Created by 一隻阿旻 on 2021/7/11.
//

import SwiftUI

struct Location: Identifiable {
    let id: String
    let name: String

    init(uuid: () -> String = { UUID().uuidString }, name: String) {
        self.id = uuid()
        self.name = name
    }
}

struct Schedule: View {

    let locations: [Location] = [
        Location(name: "彰化"),
        Location(name: "台中"),
        Location(name: "南投"),
    ]

    var body: some View {
        VStack {
            HStack {
                Text("中部")
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer(minLength: 0)
            }
            .padding(.horizontal)
            ScrollView {
                VStack(spacing: 8) {
                    ForEach(locations, id: \.id) { location in
                        HStack {
                            Image(systemName: "mappin")
                                .font(.system(size: 19))
                                .foregroundColor(.red)
                                .padding()
                            VStack(alignment: .leading, spacing: 8) {
                                Text(location.name)
                                Text(location.id)
                                    .font(.caption)
                                    .foregroundColor(Color.gray)
                            }
                            Spacer(minLength: 0)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}
