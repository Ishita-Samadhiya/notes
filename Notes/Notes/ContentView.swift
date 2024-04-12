//
//  ContentView.swift
//  Notes
//
//  Created by StudentAM on 4/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var notes = [Note]()
    
    var body: some View {
        NavigationView {
            List(notes) { note in
                NavigationLink(destination: DetailNoteView(note: note)) {
                    Text(note.title)
                }
            }
            .navigationTitle("Notes")
            .navigationBarItems(trailing:
                NavigationLink(destination: NewNoteView(notes: $notes)) {
                    Image(systemName: "plus")
                }
            )
        }
    }
}

#Preview {
    ContentView()
}
