//
//  FlagColorSection.swift
//  FlagApp
//
//  Created by Ana Vultur on 17.03.2022.
//

import SwiftUI

struct FlagColorSection: View {
    let color: Color
    
    var body: some View {
        Rectangle()
            .foregroundColor(color)
    }
}

struct FlagColorSection_Previews: PreviewProvider {
    static var previews: some View {
        FlagColorSection(color: .red)
    }
}
