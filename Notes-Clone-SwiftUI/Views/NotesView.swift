//
//  NotesView.swift
//  Notes-Clone-SwiftUI
//
//  Created by Alfeu Panzo Bena on 30/12/24.
//

import SwiftUI

struct NotesView: View {
    
    @State private var searchText = ""
    
    var body: some View {
            NavigationStack {
                List {
                    Section{
                        RecentItemView()
                    } header: {
                        Text("Today")
                            .textCase(nil)
                            .font(.headline)
                            .bold()
                            .foregroundStyle(.black)
                    }
                }
                .navigationTitle("Notes")
                .searchable(text: $searchText)
                .toolbar{
                    trailingNavItem()
                }
            }
    }
}

extension NotesView {
    
    @ToolbarContentBuilder
    private func trailingNavItem() -> some
        ToolbarContent {
            ToolbarItem(placement: .topBarTrailing){
                Menu {
                    Button{
                        
                    } label: {
                        Label("Select Chats", systemImage: "checkmark.circle")
                    }
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .foregroundStyle(Color.notesYellow)
                }
        }
    }
    
    @ToolbarContentBuilder
    private func ButtonNavItem() -> some
        ToolbarContent {
            ToolbarItem(placement: .bottomBar){
                HStack {
                    
                    Image(systemName: "folder.badge.plus")
                        .foregroundStyle(Color.notesYellow)
                    
                    Spacer()
                    
                    Image(systemName: "square.and.pencil")
                        .foregroundStyle(Color.notesYellow)
                }
        }
    }
}



private struct RecentItemView: View {
    var body: some View {
        Button { } label: {
            VStack(alignment: .leading) {
            
                recentTextView()
                
                HStack {
                    Text("09h22 .")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                        .lineLimit(1)
                    
                    Text("é um sistema que tem como principal função permitir a troca de informações bancárias e transferências financeiras entre as instituições financeiras.")
                        .font(.system(size: 14))
                        .foregroundStyle(.gray)
                        .lineLimit(1)
                }
            }
        }
    }
    
    private func recentTextView() -> some View {
        VStack(alignment: .leading){
            Text("O que é a Swift?")
                .foregroundStyle(.black)
                .lineLimit(1)
        }
    }
}

#Preview {
    NotesView()
}
