//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Mobcoder on 08/07/21.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            Image(fruit.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 480)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
    }
}
