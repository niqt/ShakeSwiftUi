//
//  ContentView.swift
//  ShakeUI
//
//  Created by nicola on 24/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var shaked = false
    
    var body: some View {
        NavigationView {
            VStack{
                ZStack {
                    ShakeViewRepresentable()
                                .allowsHitTesting(false)
                    VStack {
                        Text("Shake device to change view!")
                    }
                    
                }.onReceive(messagePublisher) { _ in
                    self.shaked = true
                }
                NavigationLink(destination: SecondView(), isActive: $shaked) {
                    EmptyView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

