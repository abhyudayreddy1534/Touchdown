//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 29/02/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                          green: shop.selectedProduct?.green ?? sampleProduct.green,
                          blue: shop.selectedProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())

    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
}
