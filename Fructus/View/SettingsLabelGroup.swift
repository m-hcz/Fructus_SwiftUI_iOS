//
//  SettingsLabelGroup.swift
//  Fructus
//
//  Created by M H on 05/12/2021.
//

import SwiftUI

struct SettingsLabelGroup: View {
	var labelText:String
	var labelImage: String
	
    var body: some View {
		HStack{
			Text(labelText.uppercased()).fontWeight(.bold)
			Spacer()
			Image(systemName: labelImage )
		} // hstack
    }
}

struct SettingsLabelGroup_Previews: PreviewProvider {
    static var previews: some View {
		SettingsLabelGroup(labelText: "Fructus", labelImage: "info.circle")
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
