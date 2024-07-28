//
//  Contact.swift
//  AsyncImage
//
//  Created by Samir on 27.07.2024.
//

import Foundation

struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let status: String
    let lastSeen: String
    let profileImage: String? // Имя локального изображения
    let isOnline: Bool
}
