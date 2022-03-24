//
//  ContentView.swift
//  FlagApp
//
//  Created by Ana Vultur on 11.03.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var hSection = false
    @State private var vSection = false
    @State private var addStripePressed = false
    @State private var commitPressed: Bool = false
    
    @StateObject private var viewModel = ViewModel()
    
    //Steaguri hardcodate
    let romaniaFlag = FlagSectionView(section: StackSection(orientation: .horizontal, subsections: [Stripe(color: .blue), Stripe(color: .yellow), Stripe(color: .red)]))
    
    let germanyFlag = FlagSectionView(section: StackSection(orientation: .vertical, subsections: [Stripe(color: .black), Stripe(color: .yellow), Stripe(color: .red)]))
    
    let finlandFlag = FlagSectionView(section: StackSection(orientation: .vertical, subsections: [
        //First row
        StackSection(orientation: .horizontal, subsections: [Stripe(color: .white), Stripe(color: .blue), Stripe(color: .white), Stripe(color: .white), Stripe(color: .white)]),
        //Second row
        Stripe(color: .blue),
        //Bottom row
        StackSection(orientation: .horizontal, subsections: [Stripe(color: .white), Stripe(color: .blue), Stripe(color: .white), Stripe(color: .white), Stripe(color: .white)])
    ]
                                                           ))
    
    var body: some View {
        
        VStack(spacing: 0) {
            VStack(spacing: 30) {
                Button(action: {
                    
                }) {
                    Text("Save Flag")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 108, height: 38)
                        .background(Color.init(red: 0.131, green: 0.573, blue: 0.712))
                }
                
                .cornerRadius(4)
                .frame(alignment: .topTrailing)
                
                VStack {
                    // aici ar trebui sa afisez steagul
                    
                    //finlandFlag
                    
                    if let root = viewModel.root {
                        FlagView(section: root, viewModel: self.viewModel)
                    }
                   else
                    if let stackSection = viewModel.currentSelection {
                        FlagView(section: stackSection, viewModel: self.viewModel)
                    }
                
                }
                .frame(width: 220, height: 140)
                .background(Color.init(red: 0.865, green: 0.883, blue: 0.88))
                .border(Color.black)
            }
            .frame(width: UIScreen.main.bounds.width, height: 350)
            .background(Color.white)
            .padding(.bottom, 10)
            
            ZStack {
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(Color.init(red: 0.865, green: 0.883, blue: 0.88))
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                    VStack(alignment: .leading, spacing: 10) {
                        
                        StripeView(color: $viewModel.color)
                        
                        AddSubsectionView(viewModel: self.viewModel)
                        
                        Button(action: {
                            viewModel.addStripe()
                        }) {
                            Text("Add a stripe")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                                .frame(width: 364, height: 70)
                                .background(Color.init(red: 0.131, green: 0.573, blue: 0.712))
                        }
                        .cornerRadius(10)
                        
                        Button(action: {
                            viewModel.commitSection()
                        }) {
                            Text("Commit Section")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                                .frame(width: 364, height: 70)
                                .background(Color.init(red: 0.484, green: 0.825, blue: 0.364))
                        }
                        .cornerRadius(10)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

