//
//  AsyncImageBootcamp.swift
//  MySwiftUI
//
//  Created by Jash Balar on 02/05/25.
//

import SwiftUI

/*
 case empty -> No image is loaded.
 case success(Image) -> An image successfully loaded.
 case failure(Error) -> An image failed to load with an error.
 */

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://imageio.forbes.com/specials-images/imageserve/680308a2fcc03d29f25e3353/Monday-Night-RAW/0x0.jpg?format=jpg&crop=2663,1774,x265,y128,safe&width=960")
    
    var body: some View {
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .clipShape(RoundedRectangle(cornerRadius: 50))
//                .padding(.horizontal)
//        }, placeholder: {
//            ProgressView()
//        })
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .padding(.horizontal)
            case .failure(let error):
                VStack {
                    Text(error.localizedDescription)
                    Image(systemName: "questionmark")
                        .font(.headline)
                }
            @unknown default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
