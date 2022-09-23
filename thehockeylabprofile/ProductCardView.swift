//
//  ProductCardView.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 11/09/2022.
//

import SwiftUI

struct ProductCardView: View {
	
	var image: String
	var title: String
	var type: String
	var price: Double
	
	var body: some View {
		HStack(alignment: .center) {
	 
			Image(image)
				.resizable()
				.frame(width: 64, height: 64)

			   .clipShape(Circle())
			   .shadow(radius: 10)
			   .overlay(Circle()
				.stroke(Color.gray, lineWidth: 5))
			   .frame(width: 100)
			   .padding(.all, 20)
			
			VStack(alignment: .leading) {
				Text(title)
					.font(.system(size: 26, weight: .bold, design: .default))
					.foregroundColor(.white)
				Text(type)
					.font(.system(size: 16, weight: .bold, design: .default))
					.foregroundColor(.gray)
				HStack {
					Text("$" + String.init(format: "%0.2f", price))
						.font(.system(size: 16, weight: .bold, design: .default))
						.foregroundColor(.white)
						.padding(.top, 8)
				}
			}.padding(.trailing, 20)
 		}
		.frame(maxWidth: .infinity, alignment: .center)
		.background(Color(red: 32/255, green: 36/255, blue: 38/255))
		.modifier(CardModifier())
	 
	}
	struct CardModifier: ViewModifier {
		func body(content: Content) -> some View {
			content
				.cornerRadius(20)
				.shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
		}
		
	}
}



struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
		ProductCardView(image: "Product_1", title: "Autumn Soup", type: "test", price: 11.99)
    }
}
