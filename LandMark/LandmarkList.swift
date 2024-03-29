//
//  LandmarkList.swift
//  LandMark
//
//  Created by Le Minh Khoi on 4/14/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData : UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoriteList) {
                    Text("Favorite only")
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoriteList || landmark.isFavorite {
                        NavigationLink(
                            destination: LandMarkDetail(landmark: landmark)
                                .environmentObject(self.userData)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPad Pro (11-inch)", "iPhone 11 Pro Max"], id: \.self) { deviceName in
//            LandmarkList()
//            .previewDevice(PreviewDevice(rawValue: deviceName))
//            .previewDisplayName(deviceName)
//        }
        LandmarkList()
            .environmentObject(UserData())
    }
}
