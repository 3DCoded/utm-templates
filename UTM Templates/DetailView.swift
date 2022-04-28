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

func humanReadableByteCount(bytes: Int) -> String {
    if (bytes < 1000) { return "\(bytes) B" }
    let exp = Int(log2(Double(bytes)) / log2(1000.0))
    let unit = ["KB", "MB", "GB", "TB", "PB", "EB"][exp - 1]
    let number = Double(bytes) / pow(1000, Double(exp))
    return String(format: "%.1f %@", number, unit)
}

struct DetailView: View {
    
    var title: String
    var link: String
    var attributes: [VMAttribute] = []
    
    init(title: String, link: String, attributes: [VMAttribute] = []) {
        self.title = title
        self.link = link
        self.attributes = attributes
        calc_vm_size()
    }
    
    mutating func calc_vm_size() {
        if let url = URL(string: link) {
            if let data = try? Data(contentsOf: url) {
                if let json = try? JSONSerialization.jsonObject(with: data) as? [String:Any] {
                    if let size = json["size"] as? Int {
                        vm_size = size
                        attributes.append(VMAttribute(key: "Size", value: humanReadableByteCount(bytes: vm_size)))
                    }
                }
            }
        }
    }
    
    var vm_size = 0
    
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
                    if let url = URL(string: "\(link)/content") {
                        NSWorkspace.shared.open(url)
                    }
                }) {
                    Text("Download VM")
                        .padding(8)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
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
