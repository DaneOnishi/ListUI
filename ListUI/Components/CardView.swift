//
//  CardView.swift
//  ListUI
//
//  Created by Daniella Onishi on 08/07/21.
//

import SwiftUI

struct CardView: View {
    @State var cardInfo: CardInfo
    @State var isLiked = false
    
    
    var body: some View {
        ZStack{
            
            Image(cardInfo.image)
                .resizable()
                .frame(width: 318, height: 360, alignment: .center)
                .cornerRadius(10)
                .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
            
            Button(action:  {
                isLiked.toggle()
            }, label: {
                HStack(alignment: .top) {
                    Image(isLiked ? "heart.fill" : "suit.heart")
                        .foregroundColor(.white)
                }
            })
            
            
            VStack(alignment: .leading) {
                Text(cardInfo.title)
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .medium, design: .rounded))
                
                Text(cardInfo.description)
                    .foregroundColor(.white)
                    .font(.system(size: 14, weight: .regular, design: .rounded))
            }.padding(.top, 280)
            .padding(.trailing, 120)
            
            
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardInfo: CardInfo(image: "AvocadoToast", title: "Avocado Toast", description: "20 min | 3 ingredients"))
    }
}
