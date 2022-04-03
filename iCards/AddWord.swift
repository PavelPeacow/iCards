//
//  AddWord.swift
//  iCards
//
//  Created by Павел Кай on 03.04.2022.
//

import SwiftUI

struct AddWord: View {
    
    @State private var englishWord = ""
    @State private var russianWord = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationView {
            Form {
                
                    Section {
                        TextField("Enter english word!", text: $englishWord)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 250, height: 40)
                        TextField("Enter russian word!", text: $russianWord)
                            .textFieldStyle(.roundedBorder)
                            .frame(width: 250, height: 40)
                    }
//                    Button(action: {
//                        if !deskName.isEmpty {
//                            let desk = Desk(context: moc)
//                            desk.deskName = deskName
//                            
//                            try? moc.save()
//                            dismiss()
//                        }
//                        else {
//                            
//                        }
//                    }, label: {
//                        Text("Add")
//                    })
            }
            .navigationTitle("Adding a word")
        }
        
    }
}

struct AddWord_Previews: PreviewProvider {
    static var previews: some View {
        AddWord()
    }
}
