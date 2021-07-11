//
//  TabBarView.swift
//  ListUI
//
//  Created by Daniella Onishi on 11/07/21.
//

import SwiftUI

struct TabBarView: View {
    @State var  tabPoints: [CGFloat] = []
    @Binding var selectedTab: Tab
    
    var body: some View {
        
        ZStack {
            
            HStack(spacing: 0) {
                TabBarButton(image: "sparkles.square.fill.on.square", text: "Dicas", tab: .tips, buttonColor: Color(#colorLiteral(red: 0.9725490196, green: 0.7450980392, blue: 0.4078431373, alpha: 1)), tabPoints: $tabPoints, selectedTab: $selectedTab)
                
                TabBarButton(image: "doc.plaintext.fill", text: "Planejamento", tab: .mealPlan, buttonColor: Color(#colorLiteral(red: 0.9058823529, green: 0.537254902, blue: 0.4, alpha: 1)), tabPoints: $tabPoints, selectedTab: $selectedTab)
                TabBarButton(image: "heart.fill", text: "Planejamento", tab: .mealPlan, buttonColor: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), tabPoints: $tabPoints, selectedTab: $selectedTab)

                
                TabBarButton(image: "person.circle", text: "Preferências", tab: .preferences, buttonColor: Color(#colorLiteral(red: 0.7279865742, green: 0.7983253598, blue: 0.3876323104, alpha: 1)), tabPoints: $tabPoints, selectedTab: $selectedTab)
            }.padding()
            .background(
                Color.white
                    .cornerRadius(25)
                    .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
                    .clipShape(TabCurve(tabPoint: getCurvePoint() - 15))
            ).padding(.horizontal)
            .overlay(
                Circle()
                    .fill(Color.white)
                    .frame(width: 10, height: 10)
                    .offset(x: getCurvePoint()-20)
                ,alignment: .bottomLeading
            )
            .cornerRadius(30)
            .padding(.horizontal)
        }
        
    }
    
    func getCurvePoint() -> CGFloat {
        if tabPoints.isEmpty{
            return 10
        }
        else{
            switch selectedTab {
            case Tab.preferences :
                return tabPoints[0]
            case
                Tab.mealPlan:
                return tabPoints[1]
            case
                Tab.heart:
                return tabPoints[2]
            default:
                return tabPoints[3]
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TabBarButton: View {
 
    
    
    var image: String
    var text: String
    var tab: Tab
    var buttonColor: Color
    @Binding var tabPoints: [CGFloat]
    @Binding var selectedTab: Tab
    
    
    var body: some View {
        
        return AnyView (
            Button(action: {
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5, blendDuration: 0.5)){
                    selectedTab = tab
                }
            },label: {
                VStack {
                    Image(systemName: image)
                        .font(.system(size: 25, weight:.semibold))
                        .offset(y: selectedTab == tab ? -10 : 0)
                        .foregroundColor(selectedTab == tab ? buttonColor : Color("TextColor"))
                        
                        .padding(1.5)
                    
                    Text("\(text)")
                        .font(.system(size: 10, weight:.semibold))
                        .offset(y: selectedTab == tab ? -10 : 0)
                        .foregroundColor(selectedTab == tab ? buttonColor : Color("TextColor"))
                }
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .contentShape(Rectangle())
        ).frame(height: 50)
    }
}

enum Tab {
    case preferences
    case mealPlan
    case heart
    case tips
    
}






