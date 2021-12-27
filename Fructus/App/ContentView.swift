//
//  ContentView.swift
//  Fructus
//
//  Created by M H on 05/12/2021.
//

import SwiftUI

struct ContentView: View {
	// MARK: PROPERTIES
	var fruit: [Fruit] = fruitsData
	
	@State private var isShowingSettings: Bool=false
	
	// MARK: BODY
    var body: some View {
		NavigationView{
			List{
				ForEach(fruit.shuffled()){item in
					NavigationLink(destination: FruitDetailView(fruit: item)){
						FruitRowView(fruit: item)
							.padding(.vertical, 4)
					}
					
				}
			} // list
			.navigationTitle("Fruit")
			.navigationBarItems(trailing: Button(action: {
				isShowingSettings=true
			}){
				Image(systemName: "slider.horizontal.3")
			}
			.sheet(isPresented: $isShowingSettings){
				SettingsView()
			}) // navbaritem
		} // navview
	//	.navigationViewStyle(StackNavigationViewStyle()) // for ipad
    } // body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
    }
}
