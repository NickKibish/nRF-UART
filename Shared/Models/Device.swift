//
//  Device.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 30/11/2021.
//

import Foundation

protocol Device {
    var name: String { get }
    var id: UUID { get }
    var color: EntityColor { get }
}

// TODO: Tmp Implementation
struct DeviceImpl: Device {
    var name: String
    
    var id: UUID
    
    var color: EntityColor
    
    
}
