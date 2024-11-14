//
//  Hike.swift
//  Hike
//
//  Created by Aman on 13/11/24.
//

import Foundation

struct Hike : Identifiable, Hashable{
    let id = UUID()
    let name: String
    let photo: String
    let distance: Int
    let about: String
}
