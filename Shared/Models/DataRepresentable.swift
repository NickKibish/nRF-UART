//
//  DataRepresentable.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 10/12/2021.
//

import Foundation

protocol DataRepresentable {
    var data: Data { get }
}

extension Data: DataRepresentable {
    var data: Data {
        return self
    }
}

extension String: DataRepresentable {
    var data: Data {
        return Data()
    }
}
