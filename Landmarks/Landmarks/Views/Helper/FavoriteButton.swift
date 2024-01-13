//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 指原奈々 on 2024/01/13.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("お気に入りに追加する", systemImage: isSet  ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet:  .constant(true))
}
