//
//  ContentView.swift
//  LandMark
//
//  Created by Le Minh Khoi on 4/12/20.
//  Copyright © 2020 Le Minh Khoi. All rights reserved.
//

import SwiftUI

struct LandMarkDetail: View {
    var body: some View {
        VStack {
            // Note that MapView.swift is the file
            // in our project. Cool.
            // The frame will receive both width and
            // height, but if you don't specific the
            // height only, width will automatically
            // sketch
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    // Spacer will span the whole child
                    // to maximum width of screen
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            
            // Spacer here to push content up
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
