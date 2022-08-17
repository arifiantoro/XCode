//
//  WisataRow.swift
//  wisata
//
//  Created by Arifiantoro on 17/08/22.
//

import SwiftUI

struct WisataRow: View {
    var wisata: Wisata

    var body: some View {
        HStack {
            wisata.image
                .resizable()
                .frame(width: 50, height: 50)
                Text(wisata.name)
            Spacer()
                }
    }
}

struct WisataRow_Previews: PreviewProvider {
    static var previews: some View {
    Group {
            WisataRow(wisata: wisatas[0] )
    .previewLayout(.fixed(width: 300, height: 70))
            WisataRow(wisata: wisatas[1] )
    .previewLayout(.fixed(width: 300, height: 70))
               }
    }
}
