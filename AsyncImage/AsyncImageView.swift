//
//  AsyncImageView.swift
//  AsyncImage
//
//  Created by Samir on 27.07.2024.
//
import SwiftUI

struct AsyncImageView: View {
    @ObservedObject private var imageLoader: ImageLoader
    private let placeholder: Image

    init(url: URL, placeholder: Image = Image(systemName: "person.crop.circle")) {
        self.imageLoader = ImageLoader(url: url)
        self.placeholder = placeholder
    }

    var body: some View {
        if let uiImage = imageLoader.image {
            Image(uiImage: uiImage)
                .resizable()
                .scaledToFill()
        } else {
            placeholder
                .resizable()
                .scaledToFill()
                .foregroundColor(.gray)
        }
    }
}
