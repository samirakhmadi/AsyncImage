//
//  ImageLoader.swift
//  AsyncImage
//
//  Created by Samir on 27.07.2024.
//

import Foundation
import Combine
import UIKit



class ImageLoader: ObservableObject {
    @Published var image: UIImage? = nil
    private let url: URL
    private var cancellable: AnyCancellable?

    init(url: URL) {
        self.url = url
        loadImage()
    }

    private func loadImage() {
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .replaceError(with: nil)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in },
                  receiveValue: { [weak self] in self?.image = $0 })
    }

    deinit {
        cancellable?.cancel()
    }
}

