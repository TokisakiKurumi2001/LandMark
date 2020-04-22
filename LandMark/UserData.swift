//
//  UserData.swift
//  LandMark
//
//  Created by Le Minh Khoi on 4/22/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoriteList = false
    @Published var landmarks = landmarkData
}
