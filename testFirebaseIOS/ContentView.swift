//
//  ContentView.swift
//  testFirebaseIOS
//
//  Created by teamdoc on 30/08/2024.
//

import SwiftUI
import FirebaseDatabase

struct ContentView: View {
    @State var identitifiant: String = ""
    @State var password: String = ""
    
    var ref = Database.database().reference()
    
    func login(){
        ref.child("Users/2").observeSingleEvent(of: .value, with: { snapshot in
            let result = snapshot.value //as? String? ?? "erreur"
            dump(result)
        }) { error in
            print("Erreur lors de la récupération des données : \(error.localizedDescription)")
        }
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
