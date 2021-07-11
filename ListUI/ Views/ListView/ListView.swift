//
//  ListView.swift
//  ListUI
//
//  Created by Daniella Onishi on 09/07/21.
//

import SwiftUI
import CloudKit

struct ListView: View {
    var body: some View {
        NavigationView {
            
                List(0..<10) { item in
                    Image(systemName: "circle")
                        .foregroundColor(Color("TextColor"))
                    Text("Ingredient")
                        .font(.system(size: 12, weight: .semibold, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                    
                }.navigationTitle("Shopping List")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
