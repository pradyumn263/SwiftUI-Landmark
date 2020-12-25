//
//  LandmarksList.swift
//  Tutorial Landmark
//
//  Created by Pradyumn Shukla on 25/12/20.
//

import SwiftUI

struct LandmarksList: View {
    var body: some View {
        
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                    LandmarkRowView(landmark: landmark)

                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList()
    }
}
