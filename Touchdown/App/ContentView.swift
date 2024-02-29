//
//  ContentView.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 28/02/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.1), radius: 5, x:0, y:5)
                    
        //            FeaturebTabView()
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0, content: {
                            FeaturebTabView()
                                .padding(.vertical, 20)
                                .frame(height: 300)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) {product in
                                    ProductItemView(product: product)
                                        .onTapGesture(perform: {
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        })
                                }
                            }
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        })
                    })
                    
                    
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }
//        .ignoresSafeArea(.all, edges: .all)
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
