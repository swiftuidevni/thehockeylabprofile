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
						 }
						 .foregroundColor(.white)
						 .background(Color.red)				 }
				 }
				 
				 
				 // This should be the last, put everything to the top
				 Spacer()
			 }.frame(width: 500, height: 200)
				 .padding()
				 .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5481430292, green: 0, blue: 0.4720868468, alpha: 1)), Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
				 .cornerRadius(10)
			 
				 .navigationBarTitle(Text("The Title"), displayMode: .inline)
			 
			 
			 //	 func callApi()
			 //	 {
			 //		 let api  = thehockeylabapi().self
			 //
			 //		 let test: () = api.getFriends()
			 //		 }
			 
		 }   .position(CGPoint(x: 150, y: 100))	 }
			 
			 
			 struct ProfileView_Previews: PreviewProvider {
				 static var previews: some View {
					 ProfileView()
				 }
			 }
		 }
	 
