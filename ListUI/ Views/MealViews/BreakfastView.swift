//
//  BreakfastView.swift
//  ListUI
//
//  Created by Daniella Onishi on 06/07/21.
//

import SwiftUI

struct BreakfastView: View {
    var recipes: [CardInfo] = recipeCardStructure.recipeCardBody
    
    var body: some View {
        
        
        GeometryReader { view in
            VStack{
                
                HStack(){
                    Image(systemName: "xmark.icloud.fill")
                    
                    ListButtonView()
                }
                
                VStack(alignment: . leading){
                    Text("What's for \ntoday?")
                        .font(.system(size: 36, weight: .semibold, design: .serif))
                        .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                    SearchBar()
                    
                    List(recipes, id: \.id){ food in
                        CardView(cardInfo: food)}
                }
            }.padding(.horizontal,30)
        }
    }
}


struct BreakfastView_Previews: PreviewProvider {
    static var previews: some View {
        BreakfastView()
    }
}
