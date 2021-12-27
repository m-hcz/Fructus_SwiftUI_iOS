//
//  SettingsView.swift
//  Fructus
//
//  Created by M H on 05/12/2021.
//

import SwiftUI

struct SettingsView: View {
	
	// MARK: PROPERTIES
	@Environment(\.presentationMode) var presentationMode
	@AppStorage("isOnboarding") var isOnboarding: Bool = false
	
	// MARK: BODY
	var body: some View {
		NavigationView{
			ScrollView(.vertical, showsIndicators: false){
				VStack(spacing: 20){
					
					// MARK: SECTION 1
					GroupBox(label:
								SettingsLabelGroup(labelText: "Fructus", labelImage: "info.circle")
					){
						Divider().padding(.vertical, 4)
						HStack(alignment: .center, spacing: 10){
							Image("logo").resizable()
								.scaledToFit()
								.frame(width: 80, height: 80)
								.cornerRadius(8)
							
							Text("Settings")
								.font(.footnote)
						}
						
						
					} // gbox
					// MARK: SECTION 2
					GroupBox(label: SettingsLabelGroup(labelText: "Customization", labelImage: "paintbrush")){
						Divider().padding(.vertical, 4)
						Text("Restert settings").font(.footnote)
						Toggle(isOn: $isOnboarding){
							if isOnboarding {
								Text("Restarted".uppercased())
									.fontWeight(.bold)
									.foregroundColor(.green)
							} else {
								Text("Restart".uppercased())
									.fontWeight(.bold)
									.foregroundColor(.secondary)
							}
						}
						.padding()
						.background(
							Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
						)
					} // gbox
					// MARK: SECTION 3
					GroupBox(label: SettingsLabelGroup(labelText: "Application", labelImage: "apps.iphone")){
						SettingsRowView(name: "Developer", content: "M / H")
						SettingsRowView(name: "Compatibility", content: "iOS 15")
						SettingsRowView(name: "Webside", linkLabel: "web link", linkDestination: "https://www.wikipedia.org")
						SettingsRowView(name: "Version", content: "0.1")
					} // gbox
				} // vstack
				.navigationBarTitle(Text("Settings"),displayMode: .large)
				.navigationBarItems(trailing: Button(action: {
					presentationMode.wrappedValue.dismiss()
				}){
					Image(systemName: "xmark")
				})
				.padding()
			} // scroll
		} // navig
		
		
	}
}

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
			.preferredColorScheme(.dark)
	}
}
