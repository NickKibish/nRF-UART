//
//  Command.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 30/11/2021.
//

import Foundation
import SwiftUI

protocol Command {
    var name: String { get }
    var iconName: String { get }
    var device: Device { get }
    var content: DataRepresentable { get }
    var color: EntityColor { get }
    var icon: EntityIcon { get }
}

// TODO: TmpImplementation
struct CommandImpl: Command {
    var name: String
    
    var iconName: String
    
    var device: Device
    
    var content: DataRepresentable
    
    var color: EntityColor
    
    var icon: EntityIcon
    
    
}
