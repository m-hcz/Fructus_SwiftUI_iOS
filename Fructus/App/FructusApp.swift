//
//  FructusApp.swift
//  Fructus
//
//  Created by M H on 05/12/2021.
//

import SwiftUI

// entrypoint
@main
struct FructusApp: App {
	
	@AppStorage("isOnboarding") var isOnboarding: Bool = false
	
    var body: some Scene {
        WindowGroup {
			if isOnboarding {
				OnboardingView()
			} else {
				ContentView()
			}
            
        }
    }
}
