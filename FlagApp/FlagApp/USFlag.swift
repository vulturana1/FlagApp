//
//  USFlag.swift
//  FlagApp
//
//  Created by Ana Vultur on 16.03.2022.
//

import SwiftUI

struct USFlag: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            VStack(spacing: 0) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 310, height: 16)
                ForEach(0..<6) { _ in
                    Rectangle()
                        .fill(.white)
                        .frame(width: 310, height: 16)
                    Rectangle()
                        .fill(.red)
                        .frame(width: 310, height: 16)
                }
            }
            
            ZStack(alignment: .leading) {
                Color.blue
                    .frame(width: 155, height: 112)
                VStack(alignment: .center) {
                    HStack() {
                        ForEach(0..<6) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 14, height: 14)
                        }
                    }
                    
                    HStack() {
                        ForEach(0..<5) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 14, height: 14)
                        }
                    }
                    
                    HStack() {
                        ForEach(0..<6) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 14, height: 14)
                        }
                    }
                    
                    HStack() {
                        ForEach(0..<5) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 14, height: 14)
                        }
                    }
                    
                    HStack() {
                        ForEach(0..<6) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 14, height: 14)
                        }
                    }
                    
                    
                }
            }
            .frame(width: 155, height: 112)
        }
        .frame(width: 310, height: 208)
    }
}

struct USFlag_Previews: PreviewProvider {
    static var previews: some View {
        USFlag()
    }
}
