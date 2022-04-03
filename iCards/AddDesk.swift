//
//  AddDesk.swift
//  iCards
//
//  Created by Павел Кай on 01.04.2022.
//

import SwiftUI

struct AddDesk: View {
    @State private var deskName: String = ""
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        
        
        NavigationView {
            Form {
                
                    Section {
                        TextField("Name your desk!", text: $deskName)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 250, height: 40)
                    }
                    Button(action: {
                        if !deskName.isEmpty {
                            let desk = Desk(context: moc)
                            desk.deskName = deskName
                            
                            try? moc.save()
                            dismiss()
                        }
                        else {
                            
                        }
                    }, label: {
                        Text("Add")
                    })
            }
            .navigationTitle("Creating a desk")
        }
        
            
            
            
        
        
        
    }
}

struct AddDesk_Previews: PreviewProvider {
    static var previews: some View {
        AddDesk()
    }
}
