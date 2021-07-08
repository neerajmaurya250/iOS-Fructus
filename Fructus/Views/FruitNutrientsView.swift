//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Mobcoder on 08/07/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Suger", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group{
                            Image(systemName: "info.circle")
//                                .accentColor(fruit.gradientColors[1])
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
                
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[2])
            .preferredColorScheme(.light)
    }
}
