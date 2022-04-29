//
//  MarkdownTest.swift
//  UTM Templates
//
//  Created by Christopher Mattar on 4/29/22.
//

import SwiftUI

struct MarkdownTest: View {
    var t = "Hello, **World!**"
    var body: some View {
    Text(try! AttributedString(markdown: t))
    }
}

struct MarkdownTest_Previews: PreviewProvider {
    static var previews: some View {
        MarkdownTest()
    }
}
