//
//  RankingsView.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 27/09/2022.
//

import SwiftUI

struct RankingsView: View {
	
	let rankings : [PlayerRankingViewModel]
	
	var body: some View {
	
		List {
			ForEach(rankings,id:\.FirstName) { ranking in
				CardView(rankings: ranking)
			}
		}
		
	}


struct RankingsView_Previews: PreviewProvider {
 		static var previews: some View {
			RankingsView(rankings: PlayerRankingViewModel.sampleData)
			}
    }
}
