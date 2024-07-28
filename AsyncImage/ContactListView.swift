//
//  ContactListView.swift
//  AsyncImage
//
//  Created by Samir on 27.07.2024.
//

import SwiftUI

struct ContactsListView: View {
    let contacts: [Contact]

    var body: some View {
        NavigationView {
            List(contacts) { contact in
                HStack {
                    // Использование локальных изображений
                    if let profileImage = contact.profileImage {
                        Image(profileImage) // Загрузка локального изображения по имени
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    } else {
                        // Изображение по умолчанию
                        Image(systemName: "photo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    }
                    
                    VStack(alignment: .leading) {
                        Text(contact.name)
                            .font(.headline)
                        Text(contact.status)
                            .font(.subheadline)
                    }
                }
            }
            .navigationTitle("Contacts")
        }
    }
}
