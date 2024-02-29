//
//  CustomShape.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 29/02/24.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: [.topRight, .topLeft],
                                cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

#Preview {
    CustomShape()
        .previewLayout(.sizeThatFits)
//        .padding()
}
