//
//  ContentView.swift
//  instagram-clone
//
//  Created by Anthony José on 25/12/20.
//

import SwiftUI

struct ContentView: View {
    
    let people: [Person] = [
        Person(name: "SrSylvan", image: "sm-laptop"),
        Person(name: "LongHair", image: "sm-laptop-drawing"),
        Person(name: "myLady", image: "sm-puzzle")
    ]
    
    var body: some View {
        
        GeometryReader { geometry in
            let colWidth = geometry.size.width / 3
        
            TabView  {
                NavigationView {
                    VStack {
                        NavView(colWidth: colWidth)
                        
                        ScrollView {
                            VStack(alignment: .leading){
                                NewsView()
                                
                                LazyHStack {
                                    VStack {
                                        Image(systemName: "person.crop.circle.badge.checkmark")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 65)
                                            .rotation3DEffect(
                                                .degrees(180),
                                                axis: (x: 0.0, y: 1.0, z: 0.0))
                                            .foregroundColor(.gray)
                                            .opacity(0.5)
                                            .colorInvert()
                                        Text("Seu story")
                                            .font(.system(size: 12))
                                    }
                                    ForEach(people, id: \.id) { person in
                                        VStack {
                                            Image(person.name)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 55)
                                                .clipShape(Circle())
                                                .overlay(Circle()
                                                            .stroke(Color.black, lineWidth: 2))
                                            
                                            Text(person.name)
                                                .font(.system(size: 12))
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .navigationBarHidden(true)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
