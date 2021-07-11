//
//  RecipePlaceholderView.swift
//  ListUI
//
//  Created by Daniella Onishi on 08/07/21.
//

import SwiftUI

struct RecipePlaceholderView: View {
    @State var recipe: Recipe
    
    var body: some View {
        
        GeometryReader { view in
            VStack(alignment: .leading) {
                
                HStack(alignment: .center) {
                    Image(recipe.image)
                        .resizable()
                        .cornerRadius(10)
                        .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
                        .edgesIgnoringSafeArea(.all)
                        .padding(.trailing, 20)
                        .padding(.bottom, 20)
                }
                
                VStack(alignment: .leading)  {
                    Text(recipe.title)
                        .font(.system(size: 36, weight: .semibold, design: .serif))
                        .foregroundColor(Color("TextColor"))
                        .padding(.bottom,10)
                    
                    Text("Ingredients")
                        .font(.system(size: 24, weight: .semibold, design: .serif))
                        .foregroundColor(Color("TextColor"))
                        .padding(.bottom, 3)
                    Text(recipe.ingredients)
                        .font(.system(size: 14, weight: .medium, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                        .padding(.bottom, 10)
                    
                    Text("How to")
                        .font(.system(size: 24, weight: .semibold, design: .serif))
                        .foregroundColor(Color("TextColor"))
                        .padding(.bottom, 3)
                    
                    Text(recipe.bodyText)
                        .font(.system(size: 14, weight: .medium, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                    Spacer()
                }
            }.padding(20)
        }
    }
}

struct RecipePlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        RecipePlaceholderView(recipe: Recipe(image: "AvocadoToast", title: "Avocado Toast", numberOfIngredients: 0, ingredients: "½ small avocado ½ \n teaspoon fresh lemon juice \n⅛ teaspoon Kosher salt \n⅛ teaspoon freshly ground black pepper \n1 (1 oz.) slice whole grain bread, toasted \n½ teaspoon extra-virgin olive oil \nToppings: Maldon sea salt flakes, red pepper flakes", bodyText: "Step 1 In a small bowl, combine avocado, lemon juice, salt, and pepper. Gently mash with the back of a fork.\nTop toasted bread with mashed avocado mixture. \nDrizzle with olive oil and sprinkle over desired toppings.\nFor perfect avocado toast, ingredient quality is key. Use fresh, crusty whole-wheat bread and the best extra-virgin olive oil you can find."
        ))
    }
}
