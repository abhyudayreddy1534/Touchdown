//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 29/02/24.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,alignment: .center, spacing: columnSpacing, content: {
                
                Section(content: {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }) {
                    SectionView(rotateClockwise: false)
                } footer: {
                    SectionView(rotateClockwise: true)
                }

            })
            .frame(height: 150)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

#Preview {
    CategoryGridView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
