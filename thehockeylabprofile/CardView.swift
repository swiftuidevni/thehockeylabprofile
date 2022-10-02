//
//  CardView.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 27/09/2022.
//

import SwiftUI

struct CardView: View {
	let rankings: [PlayerRankingViewModel]
	var body: some View {
		ForEach(rankings ,id:\.FirstName) { ranking in
		
		VStack(alignment: .leading) {
			HStack {
			  Spacer()
			}
			HStack
			{
				Image(systemName: ranking.RankingTypeImage)
					.font(.title)
 				Text("\(ranking.RankingTitleText)")
					.font(.title)

							   .frame(maxWidth: .infinity, alignment: .trailing)
			}
				Spacer()
			 
					VStack{
						
						Text("\(ranking.Reps)" as String)
 							.font(.system(size: 20.00))
							.foregroundColor(.black)

					}        .frame(width: 210.38, height: 25.97,alignment: .center)
						.background(Color.green)
						.cornerRadius(10)
					VStack
					{
						Text("")
						Text("\(ranking.Weight)  \(ranking.UOM)" as String)
							.font(.system(size: 20.00))
							.foregroundColor(.black)

					}.frame(width: 210.38, height: 35,alignment: .center)
				.background(Color.green)
				.cornerRadius(30)
			
		}  .padding()
				.overlay(
					RoundedRectangle(cornerRadius: 16 )
			.stroke(.blue, lineWidth: 4))
				.frame(width: .infinity, height: 135,alignment: .center)
		}

		 

  	}	
}

struct CardView_Previews: PreviewProvider {
	static var ranking = PlayerRankingViewModel.sampleData
		static var previews: some View {
			CardView(rankings:  PlayerRankingViewModel.sampleData)
 				.previewLayout(.fixed(width: 400, height: 60))
		}
}
