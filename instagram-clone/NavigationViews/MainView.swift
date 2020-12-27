//
//  MainView.swift
//  instagram-clone
//
//  Created by Anthony José on 27/12/20.
//

import SwiftUI

struct MainView: View {
    
    let people: [Person] = [
        Person(name: "SrSylvan", image: "sm-laptop"),
        Person(name: "LongHair", image: "sm-laptop-drawing"),
        Person(name: "myLady", image: "sm-puzzle")
    ]
    
    let colWidth: Float
    
    init (colWidth: Float) {
        self.colWidth = colWidth
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                NavView(colWidth: CGFloat(colWidth))
                
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
                                .padding(.trailing, 15)
                            }
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

