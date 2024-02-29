//
//  Shop.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 29/02/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
