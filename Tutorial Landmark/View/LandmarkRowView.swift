//
//  LandmarkRowView.swift
//  Tutorial Landmark
//
//  Created by Pradyumn Shukla on 25/12/20.
//

import SwiftUI

struct LandmarkRowView: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRowView(landmark: landmarks[0])
                .previewLayout(.fixed(width: 300, height: 70))
            LandmarkRowView(landmark: landmarks[2])
                .previewLayout(.fixed(width: 300, height: 70))

        }
    }
}
