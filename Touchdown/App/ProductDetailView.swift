//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 29/02/24.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment:.leading, spacing: 5) {
//            NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
//            Header
            HeaderDetailView()
                .padding(.horizontal)
            
//            Detail Top
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
//            Detail Bottom
            VStack(alignment: .center, spacing:0, content: {
                
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 15)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavouriteDetailView()
                    .padding(.top, 15)
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
                    .padding(.top, 10)
            })
            .padding(.horizontal)
            .background(Color.white
                .clipShape(CustomShape())
                .padding(.top, -105))
            
//            Detail Desc
            
//            QTY, FAV
            
//            Add to cart
            Spacer()
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                          green: shop.selectedProduct?.green ?? sampleProduct.green,
                          blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .ignoresSafeArea(.all, edges: .all)
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
        .previewLayout(.fixed(width: 375, height: 812))
}
