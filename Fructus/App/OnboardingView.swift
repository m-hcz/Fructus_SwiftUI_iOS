//
//  OnboardingView.swift
//  Fructus
//
//  Created by M H on 05/12/2021.
//

import SwiftUI

struct OnboardingView: View {
	// MARK: PREPERTIES
	var fruit: [Fruit] = fruitsData
	
	// MARK: BODY
    var body: some View {
		TabView{
			ForEach(fruit[0...5]){ item in
				FruitCardView(fruit: item)
			}

		} // tabview
		.tabViewStyle(PageTabViewStyle())
		.padding(.vertical, 20)
        
    }
}

// MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruit: fruitsData)
    }
}
