//
//  ChatView.swift
//  chatfirebase
//
//  Created by paulo on 10/12/24.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            
            ScrollView{
                VStack(alignment: .leading, spacing: 12) {
                    ForEach((0...10), id: \.self) { _ in
                        MessageView(isFromCurrentUser: false)
                    }
                }
            }
            
        }
        .navigationTitle("Miranha")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
}

#Preview {
    ChatView()
}
