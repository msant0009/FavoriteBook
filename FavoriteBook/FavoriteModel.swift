//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Mark Santoro on 8/16/24.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
    
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

let homer = FavoriteElements(name: "Homer", imageName: "Homer", description: "Dad")
let bart = FavoriteElements(name: "Bart", imageName: "Bart", description: "Son")
let lisa = FavoriteElements(name: "Lisa", imageName: "Lisa", description: "Daughter")
let marge = FavoriteElements(name: "Marge", imageName: "Marge", description: "Mom")

let favoriteSimpsons = FavoriteModel(title: "Favorite Simpson", elements: [homer, marge, bart, lisa])

let moe = FavoriteElements(name: "Moe", imageName: "Moe", description: "Bartender")
let krusty = FavoriteElements(name: "Krusty", imageName: "Krusty", description: "Clown")
let ned = FavoriteElements(name: "Ned", imageName: "Ned", description: "Neighbor")
let apu = FavoriteElements(name: "Apu", imageName: "Apu", description: "Seven-Eleven")

let favoriteSpringfielders = FavoriteModel(title: "Favorite Springfielders", elements: [moe, krusty,ned,apu ])

let myFavorites = [favoriteSimpsons, favoriteSpringfielders]


