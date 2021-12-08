//
//  CommandList.swift
//  nRF-UART
//
//  Created by Nick Kibysh on 16/11/2021.
//

import SwiftUI

struct CommandList: View {
    @State var newCommandPresented = false
    
    let data = (1...1).map { "Item \($0)" }
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        contentView()
    }
    
    @ViewBuilder
    func contentView() -> some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Button(action: {
                        newCommandPresented.toggle()
                    }, label: {
                        AddCommand()
                            .frame(width: 80, height: 100)
                    })
                        .buttonStyle(.plain)
                        .sheet(isPresented: $newCommandPresented, content: {
                            CreateNewCommand(commandName: .constant(""))
                        })
                }
            }
            .padding(.horizontal)
            .navigationTitle("Commands")
        }
    }
}

struct CommandList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CommandList()
                .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
            
//            CommandList()
//                .previewDevice(PreviewDevice("iPad Air (4th generation)"))
            
        }
    }
}
