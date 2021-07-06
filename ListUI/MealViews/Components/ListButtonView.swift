//
//  ListButtonView.swift
//  ListUI
//
//  Created by Daniella Onishi on 06/07/21.
//

import SwiftUI

struct ListButtonView: View {
    
    @State var navigationActive: Bool = false
    
    var body: some View {
        
        NavigationLink(
            destination: SnackView(),
            isActive: $navigationActive,
            label: {
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 58, height: 58, alignment: .topTrailing)
                        .cornerRadius(10)
                        .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
                    
                    Image(systemName: "list.dash")
                        .foregroundColor(.blue)
                        .scaleEffect(CGSize(width: 1.5, height: 1.5))
                }
            })
    }
    
}

struct ListButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ListButtonView()
    }
}
