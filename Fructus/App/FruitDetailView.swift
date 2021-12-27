//
//  FruitDetailView.swift
//  Fructus
//
//  Created by M H on 05/12/2021.
//

import SwiftUI

struct FruitDetailView: View {
	// MARK: PROPERTIES
	var fruit: Fruit
	
	// MARK: BODY
	var body: some View {
		NavigationView{
			ScrollView(.vertical, showsIndicators: false){
				VStack(alignment: .center, spacing: 20){
					// header
					FruitHeaderView(fruit: fruit)
					
					VStack(alignment: .leading, spacing: 20){
						
						// title
						Text(fruit.title)
							.font(.largeTitle)
							.fontWeight(.heavy)
							.foregroundColor(fruit.gradientColors[1])
						// headline
						Text(fruit.headline)
							.font(.headline)
							.multilineTextAlignment(.leading)
						// nutrient
						FruitNutrientsView(fruit: fruit)
						// subheadline
						Text("Learn more about \(fruit.title)".uppercased())
							.fontWeight(.bold)
							.foregroundColor(fruit.gradientColors[1])
						
						
						// description
						Text(fruit.description)
							.multilineTextAlignment(.leading)
						// link
						SourceLinkView()
					} // vstack
					.padding(.horizontal, 20)
					.frame(maxWidth: 640, alignment: .center)
				} // vstack
				.navigationBarTitle(fruit.title, displayMode: .inline)
				.navigationBarHidden(true)
			} // scrollview
			.edgesIgnoringSafeArea(.top)
		} // navview
		.navigationViewStyle(StackNavigationViewStyle()) // for ipad
	}
}

struct FruitDetailView_Previews: PreviewProvider {
	static var previews: some View {
		FruitDetailView(fruit: fruitsData[0])
	}
}
