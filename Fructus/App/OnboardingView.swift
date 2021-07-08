//
//  OnboardingView.swift
//  Fructus
//
//  Created by Mobcoder on 07/07/21.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        
        TabView{
            ForEach(fruits[3...8]){ item in
                FruitCardView(fruit: item)
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
