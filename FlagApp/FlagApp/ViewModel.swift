//
//  ViewModel.swift
//  FlagApp
//
//  Created by Ana Vultur on 21.03.2022.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    var root: Section?
    var currentSelection: StackSection?
    @Published var color: Color = .yellow
    
    func addSection(newSection: Section) {
        guard let currentSelection = currentSelection else {
            self.root = newSection
            return
        }
        currentSelection.subsections.append(newSection)
    }
    
    func addStripe() {
        let color = Stripe(color: color)
        addSection(newSection: color)
        objectWillChange.send()
    }
    
    func addStackSection(orientation: Orientation) {
        let stackSection = StackSection(orientation: orientation, subsections: [])
        stackSection.parent = currentSelection
        addSection(newSection: stackSection)
        currentSelection = stackSection
    }
    
    func addHStack() {
        addStackSection(orientation: .horizontal)
        objectWillChange.send()
    }
    
    func addVStack() {
        addStackSection(orientation: .vertical)
        objectWillChange.send()
    }
    
    func commitSection() {
        currentSelection = currentSelection?.parent as? StackSection
        objectWillChange.send()
    }
    
}
