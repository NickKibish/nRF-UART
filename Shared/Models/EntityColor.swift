//
//  EntityColor.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 10/12/2021.
//

import Foundation
import SwiftUI

struct EntityColor {
    let name: String
    var color: Color {
        Color("")
    }
}

extension EntityColor {
    static let light = EntityColor(name: "Birch")
    static let grey = EntityColor(name: "MirageGray")
    static let rose = EntityColor(name: "Pink")
    static let purple = EntityColor(name: "PurpleImpression")
    static let cyan = EntityColor(name: "Porcelain")
    static let green = EntityColor(name: "EntityGreen")
}
