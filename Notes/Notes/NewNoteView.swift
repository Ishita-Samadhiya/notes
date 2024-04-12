//
//  NewNoteView.swift
//  Notes
//
//  Created by Student on 4/10/24.
//
import SwiftUI

struct NewNoteView: View {
    @Binding var notes: [Note]
    @State private var title = ""
    @State private var content = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                TextEditor(text: $content)
            }
            .navigationTitle("New Note")
            .navigationBarItems(trailing:
                Button("Save") {
                    if !title.isEmpty && !content.isEmpty {
                        notes.append(Note(title: title, content: content))
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            )
        }
    }
}

#Preview {
    NewNoteView()
}
