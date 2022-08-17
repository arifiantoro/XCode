//
//  About.swift
//  landmarks
//
//  Created by Arifiantoro on 17/08/22.
//

import SwiftUI

struct About: View {
    var body: some View {
            VStack {

    CircleImage(image:Image("fahmi"))
                    .offset(y: -10)
                    .padding(.bottom, -10)

                VStack(alignment: .leading) {
                    Text("Fahmi Arifiantoro")
                        .font(.title)

                    HStack {
                        Text("Penggemar Nasi Padang")
                        Spacer()
                        Text("Malang")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                }
                .padding()

                Spacer()
            }
        }
    }

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
