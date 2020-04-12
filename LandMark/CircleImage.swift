//
//  CircleImage.swift
//  LandMark
//
//  Created by Le Minh Khoi on 4/12/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
        )
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
