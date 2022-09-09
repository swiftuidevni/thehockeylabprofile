//
//  AddChildView.swift
//  thehockeylabprofile
//
//  Created by David Buckley on 09/09/2022.
//

import SwiftUI
struct AddChildView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""

    
    var body: some View {
        Form {
            TextField(text: $username, prompt: Text("Username")) {
                Text("Username")
            }
            SecureField(text: $password, prompt: Text("Password")) {
                Text("Password")
            }
            SecureField(text: $password, prompt: Text("Pin")) {
                Text("Pin")
            }
            Section {
                                Button(action: {
                                    print("Verify Child...")
                                }) {
                                    Text("Verify Child")
                                }
                            }
        }            .navigationBarTitle("Settings")
    }
}

struct AddChildView_Previews: PreviewProvider {
    static var previews: some View {
        AddChildView()
    }
}
