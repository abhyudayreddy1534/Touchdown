//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 28/02/24.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable().scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    FeaturedItemView(player: players[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
