//
//  DataModel.swift
//  FlagApp
//
//  Created by Ana Vultur on 19.03.2022.
//

import Foundation
import SwiftUI

enum Orientation {
    case horizontal
    case vertical
}

class Stripe: Section {
    
    var color: Color = .red
    
    init(color: Color) {
        self.color = color
    }
}

class StackSection: Section {
    
    var parent: Section?
    
    var orientation: Orientation = .vertical
    var subsections: [Section] = []
    
    init(orientation: Orientation, subsections: [Section]) {
        self.orientation = orientation
        self.subsections = subsections
    }
    
}

class Section {
    
}
