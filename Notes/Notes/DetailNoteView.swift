//
//  DetailNoteView.swift
//  Notes
//
//  Created by Student on 4/10/24.
//

import SwiftUI

struct DetailNoteView: View {
    @Binding var notes: [Note]
    
    var body: some View {
        for note in notes{
            VStack(alignment: .leading) {
                Text(note.title)
                    .font(.title)
                Text(note.content)
                    .padding()
                Spacer()
            }
            .padding()
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

#Preview {
    DetailNoteView()
}
