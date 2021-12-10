//
//  EntityIcon.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 10/12/2021.
//

import Foundation
import SwiftUI

struct EntityIcon {
    let name: String
    
    var image: Image {
        Image(name)
    }
}

extension EntityIcon {
    static let sunMin = EntityIcon(name: "sun.min")
    static let moon = EntityIcon(name: "moon")
}
