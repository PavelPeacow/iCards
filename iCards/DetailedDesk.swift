//
//  DetailedDesk.swift
//  iCards
//
//  Created by Павел Кай on 03.04.2022.
//

import SwiftUI

struct DetailedDesk: View {
    //    let desk: Desk
    @State var showingCreateWord = false
    
    var body: some View {

            List {
                Text("Loh")
            }
            .navigationTitle("Log")
            .toolbar {
                ToolbarItem(placement:.navigationBarTrailing, content: {
                    Button {
                        showingCreateWord.toggle()
                    } label: {
                        Label("Add desk", systemImage: "plus")
                    }
                })//: ToolBar
                
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }//: ToolBar
                
            }
            .sheet(isPresented: $showingCreateWord) {
                AddWord()
            }
        
    }
}

struct DetailedDesk_Previews: PreviewProvider {
    static var previews: some View {
        DetailedDesk()
    }
}
