//
//  ProblemView.swift
//  RTLScrollView
//
//  Created by Wasim Alatrash on 1/4/21.
//

import SwiftUI

struct ProblemView: View {
    var data = ["Test  1", "Test 2"]

    var body: some View {
        ScrollView(.horizontal) {
            HStack{
                ForEach(data, id: \.self) { name in
                    Text(name)
                }
            }
        }
    }
}


struct ProblemView_Previews: PreviewProvider {
    static var previews: some View {
        ProblemView()
            .environment(\.layoutDirection, .rightToLeft)
    }
}
