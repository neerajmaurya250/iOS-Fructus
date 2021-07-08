//
//  FructusApp.swift
//  Fructus
//
//  Created by Mobcoder on 07/07/21.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
                    }
    }
}
