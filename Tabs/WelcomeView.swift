//
//  WelcomeView.swift
//  Tabs
//
//  Created by win603 on 03/11/25.
//

import SwiftUI

struct WelcomeView: View {
    @AppStorage("myName") var savedName: String = ""
    @AppStorage("myAge") var savedAge: Int = 0
    
    @State var name: String = ""
    @State var ageText: String = ""
    
    var body: some View {
        VStack{
            TextField("Dime tu nombre:", text: $name)
                .padding()
            
            TextField("Escribe tu edad:", text: $ageText)
                .padding()
                
            Button(action: {
                savedName = self.name
                if let edad = Int(self.ageText){
                    savedAge = edad
                } else {
                    savedAge = 0
                }
            }, label: {
                Text("Guardar").padding().background(Color.green)
            }).padding()
            
            
            Text("Bienvenido \(savedName) con edad de \(savedAge) años")
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


#Preview {
    WelcomeView()
}
