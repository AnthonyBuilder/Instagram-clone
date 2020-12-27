//
//  Person.swift
//  instagram-clone
//
//  Created by Anthony José on 27/12/20.
//

import Foundation

struct Person: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
}
