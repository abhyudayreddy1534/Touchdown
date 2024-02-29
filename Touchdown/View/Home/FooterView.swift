//
//  FooterView.swift
//  Touchdown
//
//  Created by Sravanthi Chinthireddy on 28/02/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            Text("We offer the most cutting edge , comfortable lightweight and durable football helmets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
            
            Text("Copyrigth © Abhyuday Reddy Nandikonda\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        })
        .padding()
    }
}

#Preview {
    FooterView()
}
