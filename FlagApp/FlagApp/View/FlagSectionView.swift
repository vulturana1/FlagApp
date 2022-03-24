//
//  FlagSectionView.swift
//  FlagApp
//
//  Created by Ana Vultur on 17.03.2022.
//

import SwiftUI

struct FlagSectionView: View {
    
    let section: Section
    
    var body: some View {
        if let color = section as? Stripe {
            FlagColorSection(color: color.color)
                
        } else if let stack = section as? StackSection {
            stackSectionView(stack: stack)
                .border(Color.black, width: 5)
        }
    }
    
    @ViewBuilder
    func stackSectionView(stack: StackSection) -> some View {
        switch stack.orientation {
        case .vertical:
            VStack(spacing: 0) {
                ForEach(0..<stack.subsections.count, id:\.self) { i in
                    FlagSectionView(section: stack.subsections[i])
                }
            }
        case .horizontal:
            HStack(spacing: 0) {
                ForEach(0..<stack.subsections.count, id:\.self) { i in
                    FlagSectionView(section: stack.subsections[i])
                }
            }
        }
    }
}

struct FlagView: View {
    let section: Section
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        FlagSectionView(section: section)
            .id(UUID())
    }
}

//struct FlagSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        //FlagSectionView(section: Section())
//    }
//}
