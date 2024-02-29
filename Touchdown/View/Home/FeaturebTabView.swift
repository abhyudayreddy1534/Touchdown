//
//  FeaturebTabView.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 28/02/24.
//

import SwiftUI

struct FeaturebTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturebTabView()
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
