//
//  ExampleFlag.swift
//  FlagApp
//
//  Created by Ana Vultur on 16.03.2022.
//

import SwiftUI

struct ExampleFlag: View {
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                Rectangle()
                    .fill( Color.init(red: 0, green: 0.153, blue: 0.408))
                    .frame(width: 108, height: 125)
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 72, height: 72)
            }
            VStack(spacing: 0) {
                Color
                    .white
                    .frame(width: 108, height: 67)
                Color
                    .init(red: 0.741, green: 0.086, blue: 0.204)
                    .frame(width: 108, height: 58)
            }
        }
    }
}

struct ExampleFlag_Previews: PreviewProvider {
    static var previews: some View {
        ExampleFlag()
    }
}
