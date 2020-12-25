//
//  LandmarkDetailView.swift
//  Tutorial Landmark
//
//  Created by Pradyumn Shukla on 25/12/20.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark: Landmark

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImageView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack (alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
           
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: landmarks[0])
    }
}
