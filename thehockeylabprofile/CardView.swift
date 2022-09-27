//
//  CardView.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 27/09/2022.
//

import SwiftUI

struct CardView: View {
	let rankings: PlayerRankingViewModel

	var body: some View {
		VStack(alignment: .leading) {
			Text(rankings.FirstName)
				.font(.headline)
			Spacer()
			HStack {
			 
				Text("\(rankings.Reps)" as String)

								Spacer()
				Text("\(rankings.Weight)" as String)
			}
		}
	}
}

struct CardView_Previews: PreviewProvider {
	static var ranking = PlayerRankingViewModel.sampleData[0]
		static var previews: some View {
			CardView(rankings:  ranking)
 				.previewLayout(.fixed(width: 400, height: 60))
		}
}
