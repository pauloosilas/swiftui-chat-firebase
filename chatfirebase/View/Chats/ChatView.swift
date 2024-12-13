//
//  ChatView.swift
//  chatfirebase
//
//  Created by paulo on 10/12/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText=""
    var body: some View {
        VStack {
            
            ScrollView{
                VStack(alignment: .leading, spacing: 12) {
                    ForEach((0...10), id: \.self) { _ in
                        MessageView(isFromCurrentUser: false)
                    }
                }
            }
            
            CustomInputView(text: $messageText, action:sendMessage)
        }
        .navigationTitle("Miranha")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)
    }
    
    func sendMessage(){
        print("Sending message \(messageText)")
    }
}

#Preview {
    ChatView()
}
