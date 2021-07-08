//
//  FruitModel.swift
//  Fructus
//
//  Created by Mobcoder on 07/07/21.
//

import SwiftUI


struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}
