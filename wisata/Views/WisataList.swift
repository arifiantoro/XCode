//
//  WisataList.swift
//  wisata
//
//  Created by Arifiantoro on 17/08/22.
//

import SwiftUI

struct WisataList: View {
    var body: some View {
        NavigationView {

        List(wisatas) { wisata in
            NavigationLink {
            WisataDetail(wisata: wisata)
                           } label: {
    WisataRow(wisata: wisata)
            }
        }
            .navigationTitle("List")
            .navigationBarItems(trailing:
        NavigationLink(destination: About()) {
            Text("About")
             })
        }
    }
}

struct WisataList_Previews: PreviewProvider {
    static var previews: some View {
        WisataList()
    }
}
