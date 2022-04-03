//
//  Button.swift
//  iCards
//
//  Created by Павел Кай on 01.04.2022.
//

import SwiftUI

struct Button1: View {
    
    @State var showingDetail = false
    
    var body: some View {
        
        
            Button(action: {
                self.showingDetail.toggle()
            }, label: {
                Text("Add a desk")
        })
        
        
    }
}

struct Button1_Previews: PreviewProvider {
    static var previews: some View {
        Button1()
    }
}
