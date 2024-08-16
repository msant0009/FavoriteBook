//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Mark Santoro on 8/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
        
        
            List  {
                
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) {element in
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)){
                                Text(element.name)
                            }
                            
                        }
                    }
                    
                }
            }.navigationBarTitle(Text("Favorite Book"))
            
            
        }
    }
}

#Preview {
    ContentView()
}
