//
//  ContentView.swift
//  AsyncImage
//
//  Created by Samir on 27.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let contacts = [
            Contact(name: "Анастасия Иванова", status: "Был(а) вчера", lastSeen: "", profileImage: "Анастасия", isOnline: false),
            Contact(name: "Петя", status: "В сети", lastSeen: "", profileImage: "Петя", isOnline: true),
            Contact(name: "Маман", status: "Был(а) 3 часа назад", lastSeen: "", profileImage: "Маман", isOnline: false),
            Contact(name: "Арбуз Дыня", status: "В сети", lastSeen: "", profileImage: "АрбузДыня", isOnline: true),
            Contact(name: "Иван Иванов", status: "В сети", lastSeen: "", profileImage: nil, isOnline: true),
            Contact(name: "Лиса Алиса", status: "Был(а) 30 минут назад", lastSeen: "", profileImage: nil, isOnline: false)
        ]

        return ContactsListView(contacts: contacts)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
