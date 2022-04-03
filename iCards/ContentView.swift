//
//  ContentView.swift
//  iCards
//
//  Created by Павел Кай on 01.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var showingCreateDesk = false
    @Environment(\.managedObjectContext) var moc
    @FetchRequest( sortDescriptors: []) var desks: FetchedResults<Desk>
    
    
    var body: some View {
        
        NavigationView{
            
            List {
                ForEach(desks) { desk in
                    NavigationLink {
                        
                    } label: {
                        Text("\(desk.deskName ?? "Unknown")")
                    }
                }
                .onDelete(perform: deleteDesk)
                if desks.count == 0 {
                    Text("No desks")
                }
            }
            .navigationBarTitle("Your desks")
            .toolbar {
                ToolbarItem(placement:.navigationBarTrailing, content: {
                    Button {
                        showingCreateDesk.toggle()
                    } label: {
                        Label("Add desk", systemImage: "plus")
                    }
                })//: ToolBar
                
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }//: ToolBar
                
            }
            .sheet(isPresented: $showingCreateDesk) {
                AddDesk().environment(\.managedObjectContext, self.moc)
            }
            
            
            
        }
        
    }
    
    func deleteDesk(at offsets: IndexSet) {
        for offset in offsets {
            let desk = desks[offset]
            moc.delete(desk)
        }
        
        try? moc.save()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
