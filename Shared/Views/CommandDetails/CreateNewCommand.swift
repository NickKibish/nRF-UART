//
//  CreateNewCommand.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 19/11/2021.
//

import SwiftUI

struct CreateNewCommand: View {
    @Binding var commandName: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "photo")
                TextField("Command Name", text: $commandName, prompt: Text("Command Name"))
            }
        }
    }
}

struct CreateNewCommand_Previews: PreviewProvider {
    
    static var previews: some View {
        CreateNewCommand(commandName: .constant("Command Name"))
//            .environment(\.colorScheme, .dark)
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
    }
}
