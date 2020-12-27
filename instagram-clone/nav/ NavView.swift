//
//   NavView.swift
//  instagram-clone
//
//  Created by Anthony José on 25/12/20.
//

import SwiftUI

struct NavView: View {
    
    var colWidth: CGFloat
    
    var body: some View {
        LazyVGrid(columns: [
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth)),
            GridItem(.fixed(colWidth))
        ]) {
            Spacer()
            
            Text("Instagram")
                .font(.title)
            
            Image("plane-arrow")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
                
        }
    }
}

