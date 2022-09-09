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
        ScrollView{
        VStack {
            VStack() {
                Text("Welcome")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                 ZStack {
                     RoundedRectangle(cornerRadius: 25, style: .continuous)
                         .fill(.red)
                     VStack {
                         Image("murry")
                            .clipShape(Circle())
                            .shadow(radius: 10)
                            .overlay(Circle()
                            .stroke(Color.red, lineWidth: 5))
                         Text("Murry GoldBerg")
                         HStack{
                             Text("Following:0").foregroundColor(.white)
                             Text("Followers:2").foregroundColor(.white)
                             Text("Kids:0").foregroundColor(.white)
                         }
                      }
                     .padding(20)
                     .multilineTextAlignment(.center)
                }
                .frame(width: 450, height: 250)
                Spacer()
            }
        }
    }
    }
            
}
 
struct Bar: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Spacer()
                Text("Community")
                Spacer()
                Button(action: {
                }) {
                    Image(systemName: "gearshape.fill").font(.headline)
                }
            }.padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
