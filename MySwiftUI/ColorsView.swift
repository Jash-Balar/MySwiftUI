//
//  ColorsView.swift
//  MySwiftUI
//
//  Created by Jash Balar on 24/01/25.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .circular)
            //            .fill(Color.blue)
//                .fill(
//                    //                Color.primary
//                    Color(uiColor: .secondarySystemBackground)
//                )
                .frame(width: 300, height: 200)
                .foregroundStyle(Color.black)
            Circle()
                .fill(
                    Color.red
                )
                .frame(width: 100)
            
        }
    }
}

#Preview {
    ColorsView()
}
