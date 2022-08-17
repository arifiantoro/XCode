//
//  SplashView.swift
//  wisata
//
//  Created by Arifiantoro on 17/08/22.
//

import SwiftUI

struct SplashView: View {
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
            // 2.
            if self.isActive {
                // 3.
                WisataList()
            } else {
                // 4.
                Text("Wisata Malang Raya")
                    .font(Font.largeTitle)
                Image("raya")
                            .resizable()
                            .scaledToFit()

            }
        }
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                // 7.
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }

}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
