//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Mobcoder on 08/07/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
                VStack(alignment: .center, spacing: 20){
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .foregroundColor(fruit.gradientColors[1])
                            .fontWeight(.bold)
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                        
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center )
                }
                .navigationBarTitle(fruit.title, displayMode: .inline).accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
