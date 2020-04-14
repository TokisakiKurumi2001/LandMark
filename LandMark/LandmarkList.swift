//
//  LandmarkList.swift
//  LandMark
//
//  Created by Le Minh Khoi on 4/14/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // fixed list
        /*List {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }*/
        // Dynamic list
        // Since we have add the `Identifiable` to
        // Landmark struct, we can remove `id` part
        // Since Landmark already have the field id
        /*List(landmarkData, id: \.id) { landmark in
            LandmarkRow(landmark: landmark)
        }*/
        List(landmarkData) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
