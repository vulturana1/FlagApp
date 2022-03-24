//
//  AddSubsectionView.swift
//  FlagApp
//
//  Created by Ana Vultur on 16.03.2022.
//

import SwiftUI

struct AddSubsectionView: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            HStack {
                Text("ADD SUBSECTION")
                    .font(.caption2)
                    .foregroundColor(Color.init(red: 0.131, green: 0.573, blue: 0.712))
                    .bold()
                    .padding(.bottom, 10)
            }
            HStack {
                Button {
                    viewModel.addHStack()
                } label: {
                    HStack(spacing: 4) {
                        Spacer()
                        RoundedRectangle(cornerRadius: 2, style: .circular)
                            .frame(width: 13, height: 29)
                            .foregroundColor(Color.init(red: 0.131, green: 0.573, blue: 0.712))
                        RoundedRectangle(cornerRadius: 2, style: .circular)
                            .frame(width: 13, height: 29)
                            .foregroundColor(Color.init(red: 0.131, green: 0.573, blue: 0.712))
                        Spacer()
                    }
                }
                Spacer()
                Divider()
                Spacer()
                Button {
                    viewModel.addVStack()
                } label: {
                    Spacer()
                    VStack(spacing: 4) {
                        RoundedRectangle(cornerRadius: 2, style: .circular)
                            .frame(width: 29, height: 13)
                            .foregroundColor(Color.init(red: 0.131, green: 0.573, blue: 0.712))
                        RoundedRectangle(cornerRadius: 2, style: .circular)
                            .frame(width: 29, height: 13)
                            .foregroundColor(Color.init(red: 0.131, green: 0.573, blue: 0.712))
                    }
                    Spacer()
                }
            }
            Spacer()
        }
        .frame(width: 364, height: 109)
        .background(.white)
        .cornerRadius(10)
    }
}

struct AddSubsectionView_Previews: PreviewProvider {
    static var previews: some View {
        AddSubsectionView(viewModel: ViewModel())
    }
}
