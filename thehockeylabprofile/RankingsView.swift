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
			CardView(rankings: rankings)
			}
		}
		
	}


struct RankingsView_Previews: PreviewProvider {
 		static var previews: some View {
			RankingsView(rankings: PlayerRankingViewModel.sampleData)
			}
    }
 
