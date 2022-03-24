//
//  StripeView.swift
//  FlagApp
//
//  Created by Ana Vultur on 16.03.2022.
//

import SwiftUI

struct StripeView: View {

    @Binding var color: Color
    
    var body: some View {
        HStack() {
            VStack {
                Text("COLOR")
                    .font(.caption2)
                    .bold()
                    .padding(.bottom, 10)
                    .foregroundColor(Color.init(red: 0.131, green: 0.573, blue: 0.712))
                HStack {
                    Rectangle()
                        .foregroundColor(color)
                        .frame(width: 90, height: 27)
                    ColorPicker("", selection: $color)
                        .frame(width: 30)
                } .padding(.top, 24)
            }
        }
        .frame(width: 364, height: 109)
        .background(.white)
        .cornerRadius(10)
    }
    
    
}

struct StripeView_Previews: PreviewProvider {
    static var previews: some View {
        StripeView(color: .init(get: {
            return .gray
        }, set: { _ in
            
        }))
    }
}
