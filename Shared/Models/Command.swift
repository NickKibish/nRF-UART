//
//  Command.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 30/11/2021.
//

import Foundation
import SwiftUI

struct Command {
    let name: String
    let icon: String
    let deviceId: UUID
    let data: Data
    let color: String
    let groupId: Int
    
    var iconImage: Image? {
        Image(systemName: icon)
    }
}
