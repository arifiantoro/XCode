//
//  WisataDetail.swift
//  wisata
//
//  Created by Arifiantoro on 17/08/22.
//

import SwiftUI

struct WisataDetail: View {
    var wisata: Wisata

        var body: some View {
            ScrollView {
        MapView(coordinate:wisata.locationCoordinate)
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)

        CircleImage(image: wisata.image)
            .offset(y: -130)
            .padding(.bottom, -130)

        VStack(alignment: .leading) {
         Text(wisata.name)
        .font(.title)

        HStack {
        Text(wisata.park)
        Spacer()
        Text(wisata.state)
            }
        .font(.subheadline)
        .foregroundColor(.secondary)
            
        Divider()
    Text("Tentang \(wisata.name)")
    .font(.title2)
    Text(wisata.description)
                }
    .padding()

                Spacer()
            }
        }
}

struct WisataDetail_Previews: PreviewProvider {
    static var previews: some View {
        WisataDetail(wisata: wisatas[0])

    }
}
