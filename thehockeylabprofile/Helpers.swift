//
//  Helpers.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 24/09/2022.
//

import SwiftUI
 
extension UIColor {
	convenience init(hexaString: String, alpha: CGFloat = 1) {
		let chars = Array(hexaString.dropFirst())
		self.init(red:   .init(strtoul(String(chars[0...1]),nil,16))/255,
				  green: .init(strtoul(String(chars[2...3]),nil,16))/255,
				  blue:  .init(strtoul(String(chars[4...5]),nil,16))/255,
				  alpha: alpha)}
}

 
