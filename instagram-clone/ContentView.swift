//
//  ContentView.swift
//  instagram-clone
//
//  Created by Anthony José on 25/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView  {
            NavigationView {
                VStack {
                    
                }
            }
            
            .tabItem { Image(systemName: "house.fill") }
            
            NavigationView {
                VStack {
                    
                }
            }
            
            .tabItem { Image(systemName: "magnifyingglass") }
            
            NavigationView {
                VStack {
                    
                }
            }
            
            .tabItem { Image(systemName: "camera") }
            
            NavigationView {
                VStack {
                    
                }
            }
            
            .tabItem { Image(systemName: "heart") }
            
            NavigationView {
                VStack {
                    
                }
            }
            
            .tabItem { Image(systemName: "person") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
