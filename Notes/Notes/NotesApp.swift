//
//  NotesApp.swift
//  Notes
//
//  Created by StudentAM on 4/10/24.
//

import SwiftUI
import Foundation

// Note Struct to store the title and content of a note
struct Note: Identifiable {
    let id = UUID()
    var title: String
    var content: String
}

@main
struct NotesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
