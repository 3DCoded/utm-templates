//
//  DetailView.swift
//  UTM Templates
//
//  Created by Christopher Mattar on 3/25/22.
//

import SwiftUI

struct VMAttribute: Identifiable {
    let key: String
    let value: String
    let id = UUID()
}

struct DetailView: View {
    
    var title: String
    var link: String
    var attributes: [VMAttribute] = []
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
            Table(attributes) {
                TableColumn("") { attr in
                    Text(attr.key)
                        .bold()
                }
                TableColumn("") { attr in
                    Text(attr.value)
                }
            }
            HStack {
                Button(action: {
                    if let url = URL(string: link) {
                        NSWorkspace.shared.open(url)
                    }
                }) {
                    Text("Download VM")
                        .padding(8)
                        .background(Color.blue)
                        .cornerRadius(5)
                }
                .buttonStyle(.plain)
            }
            Spacer()
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Windows 10", link: "http://www.google.com").padding()
    }
}
