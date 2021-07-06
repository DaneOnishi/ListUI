//
//  SearchBarView.swift
//  ListUI
//
//  Created by Daniella Onishi on 06/07/21.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        VStack{
            SearchBar()
        }
    }
}

struct SearchBar: UIViewRepresentable {
    typealias UIViewType = UISearchBar
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.searchBarStyle = .minimal
        searchBar.placeholder = "Search recipe"
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
    }
    
    func makeCoordinator() -> searchBarCoordinator {
        return searchBarCoordinator()
    }
    
    class searchBarCoordinator: NSObject, UISearchBarDelegate {
        
    }
    
}
struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
