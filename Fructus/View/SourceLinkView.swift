//
//  SourceLinkView.swift
//  Fructus
//
//  Created by M H on 05/12/2021.
//

import SwiftUI

struct SourceLinkView: View {
	// MARK: PROPERTIES
	
	
	// MARK: BODY
    var body: some View {
		GroupBox{
			HStack{
				Text("Content Source")
				Spacer()
				Link("Wikipedia",destination: URL(string: "https://www.wikipedia.org")!)
				Image(systemName: "arrow.up.right.square")
			} // hstack
			.font(.footnote)
		} // grbox
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
