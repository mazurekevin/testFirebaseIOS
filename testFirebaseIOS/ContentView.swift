//
//  ContentView.swift
//  testFirebaseIOS
//
//  Created by teamdoc on 30/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State var identitifiant: String = ""
    @State var password: String = ""
    
    func login(){
        
    }
    
    
    var body: some View {
        VStack {
            TextField("identifiant", text: $identitifiant).padding().border(Color.black)
            
            TextField("password", text: $password).padding().border(Color.black)
            
            Button(action: {
                login()
            }){
                Text("Valider")
            }.padding()
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
