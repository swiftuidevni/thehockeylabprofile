//
//  ProfileView.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 09/09/2022.
//

import SwiftUI
 struct ProfileView : View
{
	 var body: some View {

		 VStack{
			 VStack {
				 Group
				 {
					 HStack{
						 Image(systemName:"person.crop.circle.fill")
							 .font(.system(size: 60))
						 VStack{
							 Text("Player One")
							 Text("Parent Profile")
						 }
						 
						 
					 }
					 HStack{
						 VStack{
							 Text("2")
							 Text("Players")
						 }
						 
						 VStack{
							 Text("10")
							 Text("followers")
						 }.padding(.leading, 30)
					 
						 Button(action: {}) {
							 Text("Add Player")
						 }.frame(width: 137, height: 47)
							 .foregroundColor(Color.black)
							 .background(Color.white)
							 .cornerRadius(5)
						 
					 }
				 }
				 
				 
				 // This should be the last, put everything to the top
				 Spacer()
				 
				 
			 }.frame(width: 500, height: 200)
				 .padding()
				 .background(Color.gray.opacity(0.5))
				 .cornerRadius(10)
			 
				 .navigationBarTitle(Text("The Title"), displayMode: .inline)
				  
			 Text("Test test")
			 RankingsView(rankings: PlayerRankingViewModel.sampleData)
				 .background(Color.gray.opacity(0.5))
		 }
		 
		
			
			 //	 func callApi()
			 //	 {
			 //		 let api  = thehockeylabapi().self
			 //
			 //		 let test: () = api.getFriends()
			 //		 }
			 
		// }   .position(CGPoint(x: 150, y: 100))
		 
		
	 }
			 
			 
			 struct ProfileView_Previews: PreviewProvider {
				 static var previews: some View {
					 ProfileView()
				 }
			 }
		 }
	 
