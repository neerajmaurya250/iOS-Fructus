//
//  ContentView.swift
//  Fructus
//
//  Created by Mobcoder on 07/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSetting: Bool = false
    
    var fruit: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled()){
                    item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSetting = true
            }){
                Image(systemName: "slider.horizontal.3")
                
            }.sheet(isPresented: $isShowingSetting){
                SettingView()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
