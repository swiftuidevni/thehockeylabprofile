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
    @State var showingPopover = false
    var body: some View {
        TabView{
            HomeView()                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    
                }
                
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                    
                }
            
            StatsView()
                .tabItem {
                    Image(systemName: "plus").renderingMode(.original).padding()
                    Text("Plus")
                    
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
