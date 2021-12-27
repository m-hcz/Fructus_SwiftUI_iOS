//
//  SettingsRowView.swift
//  Fructus
//
//  Created by M H on 05/12/2021.
//

import SwiftUI

struct SettingsRowView: View {
	
	var name: String
	var content: String? = nil
	var linkLabel: String? = nil
	var linkDestination: String? = nil
	
    var body: some View {
		VStack {
			Divider().padding(.vertical, 4)
			HStack{
				Text(name).foregroundColor(.gray)
				Spacer()
				if content != nil {
					Text(content!)
				} else if(linkLabel != nil && linkDestination != nil ) {
					Link(linkLabel!, destination: URL(string: linkDestination!)!)
					Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
				} else {
					/*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
				}
			} // htack
		} // vstack
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			SettingsRowView(name: "Developer", content: "M / H")
				.previewLayout(.fixed(width: 375, height: 60))
			.padding()
			SettingsRowView(name: "Developer", linkLabel: "aaaa", linkDestination: "https://www.wikipedia.org")
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
			SettingsRowView(name: "Developer")
				.preferredColorScheme(.dark)
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
		}
    }
}
