//
//  SolutionView.swift
//  RTLScrollView
//
//  Created by Wasim Alatrash on 1/4/21.
//

import SwiftUI

struct SolutionView: View {
    var data = ["Test  1", "Test 2"]

    var body: some View {
        ScrollView(.horizontal) {
            HStack{
                ForEach(data, id: \.self) { name in
                    Text(name)
                }
            }
            .environment(\.layoutDirection, .rightToLeft)
            .rotation3DEffect(Angle(degrees: 180), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))

        }
        .flipsForRightToLeftLayoutDirection(true)
    }
}


struct SolutionView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionView()
            .environment(\.layoutDirection, .rightToLeft)
    }
}

