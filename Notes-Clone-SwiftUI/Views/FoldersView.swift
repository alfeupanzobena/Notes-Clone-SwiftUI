//
//  FoldersView.swift
//  Notes-Clone-SwiftUI
//
//  Created by Alfeu Panzo Bena on 30/12/24.
//

import SwiftUI

struct FoldersView: View {
    
    @State private var searchText = ""
    
    var body: some View {
            NavigationStack {
                List {
                    
                    Section{
                        RecentCallItemView()
                    } header: {
                        Text("iCloud")
                            .textCase(nil)
                            .font(.headline)
                            .bold()
                            .foregroundStyle(.black)
                    }
                }
                .navigationTitle("Folders")
                .searchable(text: $searchText)
                .toolbar{
                    trailingNavItem()
                    ButtonNavItem()
                }
            }
    }
}

extension FoldersView {
    
    @ToolbarContentBuilder
    private func trailingNavItem() -> some
        ToolbarContent {
            ToolbarItem(placement: .topBarTrailing){
                Button("Edit") { }
                    .foregroundStyle(Color.notesYellow)
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



private struct RecentCallItemView: View {
    var body: some View {
        Button { } label: {
            HStack{
                Image(systemName: "folder")
                    .foregroundStyle(Color.notesYellow)
                
                recentCallsTextView()
                
                Spacer()
                
                Text("4")
                    .font(.system(size: 16))
                    .foregroundStyle(.gray)
                
                Image(systemName: "chevron.forward")
                    .font(.system(size: 12))
                    .foregroundStyle(.gray)
            }
        }
    }
    
    private func recentCallsTextView() -> some View {
        VStack(alignment: .leading){
            Text("Notes")
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    FoldersView()
}