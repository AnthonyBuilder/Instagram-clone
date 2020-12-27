//
//  NewsView.swift
//  instagram-clone
//
//  Created by Anthony José on 26/12/20.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        HStack {
            Image("round-flag")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard")
                .font(.system(size: 12))
            
            Image(systemName: "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 12)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
