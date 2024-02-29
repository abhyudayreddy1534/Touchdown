//
//  SectionView.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 29/02/24.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 12)))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: false)
        .previewLayout(.fixed(width: 120, height: 240))
        .padding()
        .background(colorBackground)
}
