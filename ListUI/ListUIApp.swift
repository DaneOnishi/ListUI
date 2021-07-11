//
//  ListUIApp.swift
//  ListUI
//
//  Created by Daniella Onishi on 06/07/21.
//

import SwiftUI

@main
struct ListUIApp: App {
    @State var selectedTab = Tab.mealPlan
    var body: some Scene {
        WindowGroup {
            
            VStack {
                ZStack(alignment: .bottom){
                    if selectedTab == .heart {
                        BreakfastView()
                    } else if selectedTab == .mealPlan {
                        LunchView()
                    } else if selectedTab == .tips {
                        LunchView()
                    } else {
                       DinnerView()
                    }
              
                    TabBarView(selectedTab: $selectedTab)
                }
            }
           
        }
    }
}
