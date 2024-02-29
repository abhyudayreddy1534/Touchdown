//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 29/02/24.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack(alignment:.leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                .padding(10)
            }
            .background(Color(red: product.red,
                              green: product.green,
                              blue: product.blue))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
            
        }
    }
}

#Preview {
    ProductItemView(product: products[0])
        .previewLayout(.fixed(width: 200, height: 300))
        .padding()
        .background(colorBackground)
}
