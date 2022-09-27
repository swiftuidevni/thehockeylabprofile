//
//  ContentView.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 09/09/2022.
//

import SwiftUI

struct HomeView : View
{
    var body: some View {
         
            ZStack{
                Color.red
                
            }
             
    }
}

struct ContentView: View {
     var body: some View {
		 NavigationView{        TabView{
            HomeView()                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    
                }
			 
				ProfileView()
			
				
			                 .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                    
                }
            ZStack {
            StatsView()
                .tabItem {
                    Image(systemName: "plus").renderingMode(.original).padding()
                    Text("Plus")
                    
                }
            }  

            
            StatsView()
                .tabItem {
                    Image(systemName: "dumbbell.fill").renderingMode(.original).padding()
                    Text("Stats")
                    
                }
            
            StatsView()
                .tabItem {
                    Image(systemName: "dumbbell.fill").renderingMode(.original).padding()
                    Text("Notes")
                    
                }
        }
    }.safeAreaInset(edge: .bottom, alignment: .center, spacing: 0) {
        Color.clear
            .frame(height: 20)
            .background(Material.bar)
     }
	 }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
