//
//  GroupsList.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 23/11/2021.
//

import SwiftUI

struct GroupsList: View {
    struct Ocean: Identifiable {
        let name: String
        let id = UUID()
    }
    private var oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]
    
    var body: some View {
        NavigationView {
            List(oceans) { _ in
                NavigationLink("All Groups", destination: CommandList())
            }
            
            Text("Select Group")
        }
    }
}

struct GroupsList_Previews: PreviewProvider {
    static var previews: some View {
        GroupsList()
    }
}
