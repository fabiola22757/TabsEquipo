//
//  CounterView.swift
//  Tabs
//
//  Created by WIN603 on 03/11/25.
//

import SwiftUI

struct CounterView: View {
    @ObservedObject var counter : Counter = Counter()
    
    var body: some View {
        VStack{
            Text("\(self.counter.number)")
                .font(.title)
                .bold()
            
            HStack(){
                Button(action: {
                    self.counter.stop()
                }){
                    HStack{
                        
                        Image(systemName: "stop.fill")
                            .foregroundColor(Color.white)
                        
                        Text("Stop")
                            .foregroundColor(Color.white)
                            .font(.headline)
                    }.padding(.all)
                }.background(Color.red)
                
                Button(action: {
                    self.counter.start()
                }){
                    HStack{
                        Image(systemName: "play.fill")
                            .foregroundColor(.white)
                        
                        Text("Start")
                            .foregroundColor(.white)
                            .font(.headline)
                    }.padding(.all)
                }.background(Color.green)
            }
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
